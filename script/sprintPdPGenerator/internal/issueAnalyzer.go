package internal

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

type IssueSummary struct {
	Number int
	Title  string
}

/*
//rendicontazione iniziale fino allo sprint 9 (compreso)
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
*/
//nuova allocazione delle ore inizio PB (dal 10 al 13 compresi)
/*
var hoursPerRolePerName = map[string]map[string]int{
	"Responsabile": {
		"Jaume Bernardi":       4,
		"Alessandro Dinato":    6,
		"Michele Dioli":        8,
		"Hossam Ezzemouri":     2,
		"Riccardo Graziani":    3,
		"Siria Salvalaio":      6,
		"Elia Ernesto Stellin": 5,
	},
	"Amministratore": {
		"Jaume Bernardi":       7,
		"Alessandro Dinato":    8,
		"Michele Dioli":        7,
		"Hossam Ezzemouri":     9,
		"Riccardo Graziani":    8,
		"Siria Salvalaio":      9,
		"Elia Ernesto Stellin": 8,
	},
	"Analista": {
		"Jaume Bernardi":       10,
		"Alessandro Dinato":    13,
		"Michele Dioli":        10,
		"Hossam Ezzemouri":     14,
		"Riccardo Graziani":    13,
		"Siria Salvalaio":      10,
		"Elia Ernesto Stellin": 12,
	},
	"Progettista": {
		"Jaume Bernardi":       18,
		"Alessandro Dinato":    18,
		"Michele Dioli":        18,
		"Hossam Ezzemouri":     17,
		"Riccardo Graziani":    17,
		"Siria Salvalaio":      18,
		"Elia Ernesto Stellin": 18,
	},
	"Programmatore": {
		"Jaume Bernardi":       28,
		"Alessandro Dinato":    25,
		"Michele Dioli":        27,
		"Hossam Ezzemouri":     27,
		"Riccardo Graziani":    27,
		"Siria Salvalaio":      25,
		"Elia Ernesto Stellin": 27,
	},
	"Verificatore": {
		"Jaume Bernardi":       28,
		"Alessandro Dinato":    25,
		"Michele Dioli":        25,
		"Hossam Ezzemouri":     26,
		"Riccardo Graziani":    27,
		"Siria Salvalaio":      27,
		"Elia Ernesto Stellin": 25,
	},
}
*/

// nuova allocazione delle ore fine PB (dal 14 in poi, compreso)
var hoursPerRolePerName = map[string]map[string]int{
	"Responsabile": {
		"Jaume Bernardi":       7,
		"Alessandro Dinato":    6,
		"Michele Dioli":        8,
		"Hossam Ezzemouri":     2,
		"Riccardo Graziani":    3,
		"Siria Salvalaio":      8,
		"Elia Ernesto Stellin": 2,
	},
	"Amministratore": {
		"Jaume Bernardi":       7,
		"Alessandro Dinato":    11,
		"Michele Dioli":        8,
		"Hossam Ezzemouri":     13,
		"Riccardo Graziani":    5,
		"Siria Salvalaio":      11,
		"Elia Ernesto Stellin": 11,
	},
	"Analista": {
		"Jaume Bernardi":       6,
		"Alessandro Dinato":    13,
		"Michele Dioli":        10,
		"Hossam Ezzemouri":     15,
		"Riccardo Graziani":    13,
		"Siria Salvalaio":      7,
		"Elia Ernesto Stellin": 12,
	},
	"Progettista": {
		"Jaume Bernardi":       17,
		"Alessandro Dinato":    15,
		"Michele Dioli":        16,
		"Hossam Ezzemouri":     12,
		"Riccardo Graziani":    20,
		"Siria Salvalaio":      18,
		"Elia Ernesto Stellin": 14,
	},
	"Programmatore": {
		"Jaume Bernardi":       29,
		"Alessandro Dinato":    29,
		"Michele Dioli":        28,
		"Hossam Ezzemouri":     27,
		"Riccardo Graziani":    29,
		"Siria Salvalaio":      28,
		"Elia Ernesto Stellin": 25,
	},
	"Verificatore": {
		"Jaume Bernardi":       29,
		"Alessandro Dinato":    21,
		"Michele Dioli":        25,
		"Hossam Ezzemouri":     26,
		"Riccardo Graziani":    25,
		"Siria Salvalaio":      23,
		"Elia Ernesto Stellin": 31,
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

func GroupIssuesByState(issues *[]Issue, sprint int) map[string][]IssueSummary {
	result := make(map[string][]IssueSummary)
	for _, issue := range *issues {
		if issue.Sprint == sprint {
			result[issue.State] = append(result[issue.State], IssueSummary{Number: issue.Number, Title: issue.Title})
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
