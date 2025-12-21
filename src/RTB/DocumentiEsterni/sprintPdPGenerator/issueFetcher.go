package main

import (
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"strconv"
	"strings"
	"time"
)

const graphqlEndpoint = "https://api.github.com/graphql"

type Issue struct {
	Title               string
	Number              int
	State               string
	URL                 string
	CreatedAt           string
	Author              string
	Assignees           []string
	Priority            string
	StartDate           time.Time
	TargetDate          time.Time
	EndDate             time.Time
	Sprint              int
	SprintStartDate     time.Time
	SprintEndDate       time.Time
	SprintRole          string
	ExpectedWorkedHours int
	WorkedHours         int
}

type GraphQLRequest struct {
	Query     string                 `json:"query"`
	Variables map[string]interface{} `json:"variables"`
}

type ProjectV2Response struct {
	Data struct {
		Organization struct {
			ProjectV2 ProjectV2Data `json:"projectV2"`
		} `json:"organization"`
		User struct {
			ProjectV2 ProjectV2Data `json:"projectV2"`
		} `json:"user"`
	} `json:"data"`
	Errors []struct {
		Message string `json:"message"`
	} `json:"errors"`
}

type ProjectV2Data struct {
	Title string `json:"title"`
	Items struct {
		Nodes    []ProjectItem `json:"nodes"`
		PageInfo struct {
			HasNextPage bool   `json:"hasNextPage"`
			EndCursor   string `json:"endCursor"`
		} `json:"pageInfo"`
	} `json:"items"`
}

type ProjectItem struct {
	FieldValues struct {
		Nodes []FieldValue `json:"nodes"`
	} `json:"fieldValues"`
	Content struct {
		TypeName  string `json:"__typename"`
		Title     string `json:"title"`
		Number    int    `json:"number"`
		State     string `json:"state"`
		URL       string `json:"url"`
		CreatedAt string `json:"createdAt"`
		Author    struct {
			Login string `json:"login"`
		} `json:"author"`
		Assignees struct {
			Nodes []struct {
				Login string `json:"login"`
			} `json:"nodes"`
		} `json:"assignees"`
	} `json:"content"`
}

type FieldValue struct {
	Field struct {
		Name string `json:"name"`
	} `json:"field"`
	Text      string  `json:"text,omitempty"`
	Number    float64 `json:"number,omitempty"`
	Date      string  `json:"date,omitempty"`
	Name      string  `json:"name,omitempty"`  // per SingleSelect
	Title     string  `json:"title,omitempty"` // per Iteration
	StartDate string  `json:"startDate,omitempty"`
	Duration  int     `json:"duration,omitempty"`
	Users     struct {
		Nodes []struct {
			Login string `json:"login"`
		} `json:"nodes"`
	} `json:"users,omitempty"`
}

func fetchProjectIssues(token, owner string, projectNumber int, isOrg bool, sprint int) ([]Issue, time.Time, time.Time, error) {
	var allIssues []Issue
	var cursor *string
	sprintStartDate := time.Time{}
	sprintEndDate := time.Time{}

	ownerType := "user"
	if isOrg {
		ownerType = "organization"
	}

	for {
		query := buildQuery(ownerType)
		variables := map[string]interface{}{
			"owner":         owner,
			"projectNumber": projectNumber,
			"first":         100,
		}
		if cursor != nil {
			variables["after"] = *cursor
		}

		reqBody := GraphQLRequest{Query: query, Variables: variables}
		jsonBody, err := json.Marshal(reqBody)
		if err != nil {
			return nil, sprintStartDate, sprintEndDate, fmt.Errorf("errore marshal JSON: %w", err)
		}

		req, err := http.NewRequest("POST", graphqlEndpoint, bytes.NewBuffer(jsonBody))
		if err != nil {
			return nil, sprintStartDate, sprintEndDate, fmt.Errorf("errore creazione request: %w", err)
		}

		req.Header.Set("Authorization", "Bearer "+token)
		req.Header.Set("Content-Type", "application/json")

		client := &http.Client{}
		resp, err := client.Do(req)
		if err != nil {
			return nil, sprintStartDate, sprintEndDate, fmt.Errorf("errore HTTP request: %w", err)
		}
		defer resp.Body.Close()

		body, err := io.ReadAll(resp.Body)
		if err != nil {
			return nil, sprintStartDate, sprintEndDate, fmt.Errorf("errore lettura response: %w", err)
		}

		var result ProjectV2Response
		if err := json.Unmarshal(body, &result); err != nil {
			return nil, sprintStartDate, sprintEndDate, fmt.Errorf("errore parsing JSON: %w", err)
		}

		if len(result.Errors) > 0 {
			return nil, sprintStartDate, sprintEndDate, fmt.Errorf("errore GraphQL: %s", result.Errors[0].Message)
		}

		var projectData ProjectV2Data
		if isOrg {
			projectData = result.Data.Organization.ProjectV2
		} else {
			projectData = result.Data.User.ProjectV2
		}

		for _, node := range projectData.Items.Nodes {
			if node.Content.TypeName == "Issue" {
				issue := Issue{
					Title:     node.Content.Title,
					Number:    node.Content.Number,
					State:     node.Content.State,
					URL:       node.Content.URL,
					CreatedAt: node.Content.CreatedAt,
					Author:    node.Content.Author.Login,
				}

				// Assignees from issue
				for _, a := range node.Content.Assignees.Nodes {
					issue.Assignees = append(issue.Assignees, a.Login)
				}

				// Custom fields from project
				for _, fv := range node.FieldValues.Nodes {
					fieldName := fv.Field.Name
					switch fieldName {
					case "Priority":
						issue.Priority = fv.Name // SingleSelect
					case "Start date", "Start Date":
						issue.StartDate = parseDate(fv.Date)
					case "Target date", "Target Date":
						issue.TargetDate = parseDate(fv.Date)
					case "End date", "End Date":
						issue.EndDate = parseDate(fv.Date)
					case "Sprint":
						sprintStr := strings.Replace(fv.Title, "Sprint ", "", 1)
						sprintN, err := strconv.Atoi(sprintStr)
						if err != nil {
							panic(err)
						}
						issue.Sprint = int(sprintN)
						if fv.StartDate != "" {
							issue.SprintStartDate = parseDate(fv.StartDate)
							// Calcola end date da startDate + duration (in giorni)
							if fv.Duration > 0 {
								issue.SprintEndDate = issue.SprintStartDate.AddDate(0, 0, fv.Duration)
							}
						}
					case "Sprint role", "Sprint Role":
						issue.SprintRole = fv.Name // SingleSelect
					case "Expected Worked Hours", "Expected worked hours":
						issue.ExpectedWorkedHours = int(fv.Number)
					case "Worked hours", "Worked Hours":
						issue.WorkedHours = int(fv.Number)
					}
				}

				if issue.Sprint == sprint {
					sprintStartDate = issue.SprintStartDate
					sprintEndDate = issue.SprintEndDate
				}

				allIssues = append(allIssues, issue)
			}
		}

		if !projectData.Items.PageInfo.HasNextPage {
			break
		}
		cursor = &projectData.Items.PageInfo.EndCursor
	}

	return allIssues, sprintStartDate, sprintEndDate, nil
}

func parseDate(s string) time.Time {
	if s == "" {
		return time.Time{}
	}
	t, _ := time.Parse("2006-01-02", s)
	return t
}

func buildQuery(ownerType string) string {
	return fmt.Sprintf(`
		query($owner: String!, $projectNumber: Int!, $first: Int!, $after: String) {
			%s(login: $owner) {
				projectV2(number: $projectNumber) {
					title
					items(first: $first, after: $after) {
						nodes {
							fieldValues(first: 20) {
								nodes {
									... on ProjectV2ItemFieldTextValue {
										field { ... on ProjectV2Field { name } }
										text
									}
									... on ProjectV2ItemFieldNumberValue {
										field { ... on ProjectV2Field { name } }
										number
									}
									... on ProjectV2ItemFieldDateValue {
										field { ... on ProjectV2Field { name } }
										date
									}
									... on ProjectV2ItemFieldSingleSelectValue {
										field { ... on ProjectV2SingleSelectField { name } }
										name
									}
									... on ProjectV2ItemFieldIterationValue {
										field { ... on ProjectV2IterationField { name } }
										title
										startDate
										duration
									}
									... on ProjectV2ItemFieldUserValue {
										field { ... on ProjectV2Field { name } }
										users(first: 10) {
											nodes { login }
										}
									}
								}
							}
							content {
								__typename
								... on Issue {
									title
									number
									state
									url
									createdAt
									author { login }
									assignees(first: 10) {
										nodes { login }
									}
								}
							}
						}
						pageInfo {
							hasNextPage
							endCursor
						}
					}
				}
			}
		}
	`, ownerType)
}

func (i Issue) String() string {
	return fmt.Sprintf(
		"Issue{Title:%q, Number:%d, State:%q, URL:%q, Author:%q, Assignees:%v, Priority:%q, StartDate:%v, TargetDate:%v, EndDate:%v, Sprint:%d, SprintStartDate:%v, SprintEndDate:%v, SprintRole:%q, ExpectedWorkedHours:%d, WorkedHours:%d}",
		i.Title,
		i.Number,
		i.State,
		i.URL,
		i.Author,
		i.Assignees,
		i.Priority,
		i.StartDate,
		i.TargetDate,
		i.EndDate,
		i.Sprint,
		i.SprintStartDate,
		i.SprintEndDate,
		i.SprintRole,
		i.ExpectedWorkedHours,
		i.WorkedHours,
	)
}
