package main

const (
	Expected  = true
	Effective = false
)

var costPerHourPerRole = map[string]int{
	"Responsabile":   30,
	"Amministratore": 20,
	"Analista":       25,
	"Progettista":    25,
	"Programmatore":  15,
	"Verificatore":   15,
}

var hoursPerRolePerName = map[string]map[string]int{
	"Responsabile": {
		"Jaume Bernardi":       8,
		"Alessandro Dinato":    7,
		"Michele Dioli":        8,
		"Hossam Ezzemouri":     7,
		"Riccardo Graziani":    8,
		"Siria Salvalaio":      8,
		"Elia Ernesto Stellin": 8,
	},
	"Amministratore": {
		"Jaume Bernardi":       7,
		"Alessandro Dinato":    8,
		"Michele Dioli":        7,
		"Hossam Ezzemouri":     8,
		"Riccardo Graziani":    8,
		"Siria Salvalaio":      8,
		"Elia Ernesto Stellin": 8,
	},
	"Analista": {
		"Jaume Bernardi":       10,
		"Alessandro Dinato":    10,
		"Michele Dioli":        10,
		"Hossam Ezzemouri":     10,
		"Riccardo Graziani":    10,
		"Siria Salvalaio":      9,
		"Elia Ernesto Stellin": 9,
	},
	"Progettista": {
		"Jaume Bernardi":       21,
		"Alessandro Dinato":    21,
		"Michele Dioli":        21,
		"Hossam Ezzemouri":     20,
		"Riccardo Graziani":    20,
		"Siria Salvalaio":      21,
		"Elia Ernesto Stellin": 21,
	},
	"Programmatore": {
		"Jaume Bernardi":       24,
		"Alessandro Dinato":    23,
		"Michele Dioli":        24,
		"Hossam Ezzemouri":     24,
		"Riccardo Graziani":    23,
		"Siria Salvalaio":      24,
		"Elia Ernesto Stellin": 23,
	},
	"Verificatore": {
		"Jaume Bernardi":       23,
		"Alessandro Dinato":    24,
		"Michele Dioli":        23,
		"Hossam Ezzemouri":     24,
		"Riccardo Graziani":    24,
		"Siria Salvalaio":      23,
		"Elia Ernesto Stellin": 24,
	},
}

func ResourceUsage(issues *[]Issue, sprint int, expected bool) map[string]map[string]int {
	result := map[string]map[string]int{
		"Responsabile":   {},
		"Amministratore": {},
		"Analista":       {},
		"Progettista":    {},
		"Programmatore":  {},
		"Verificatore":   {},
	}

	for _, issue := range *issues {
		if issue.Sprint == sprint {

			if _, ok := result[issue.SprintRole]; !ok {
				result[issue.SprintRole] = make(map[string]int)
			}

			for _, ass := range issue.Assignees {
				if expected {
					result[issue.SprintRole][ass] += issue.ExpectedWorkedHours
				} else {
					result[issue.SprintRole][ass] += issue.WorkedHours
				}
			}
		}
	}

	return result
}

func GroupIssuesByState(issues *[]Issue, sprint int) map[string][]int {
	result := make(map[string][]int)
	for _, issue := range *issues {
		if issue.Sprint == sprint {
			result[issue.State] = append(result[issue.State], issue.Number)
		}
	}
	return result
}

func UpdateResources(issues *[]Issue, sprint int) map[string]map[string]int {
	result := make(map[string]map[string]int)

	for role, people := range hoursPerRolePerName {
		result[role] = make(map[string]int)
		for name, hours := range people {
			result[role][nameToUsername[name]] = hours
		}
	}

	if sprint <= 0 {
		return result
	}

	for i := 1; i <= sprint; i++ {
		sprintUsage := ResourceUsage(issues, i, Effective)
		for role, roleUsages := range sprintUsage {
			if _, ok := result[role]; !ok {
				result[role] = make(map[string]int)
			}

			for username, workedHours := range roleUsages {
				result[role][username] -= workedHours
			}
		}
	}

	return result
}
