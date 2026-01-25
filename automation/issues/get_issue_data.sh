#!/bin/bash
# Variabili env richieste:
# - $GH_TOKEN
# - $ORGANIZATION
# - $PROJECT_NUMBER
# - $ISSUE_NUMBER

# Get project data --------------------------------------------------------------------------------
PROJECT_DATA=$(gh api graphql -f query=' 
query($org: String!, $number: Int!) { 
    organization(login: $org){ 
    projectV2(number: $number) { 
        id 
        fields(first:50) { 
        nodes { 
            ... on ProjectV2Field { 
                id 
                name 
            }
            ... on ProjectV2IterationField {
                id
                name
                configuration {
                    completedIterations {
                        title
                        startDate
                        id
                    }
                    iterations {
                        title
                        startDate
                        id
                    }
                }
            }
            ... on ProjectV2SingleSelectField { 
                id 
                name 
                options { 
                    id 
                    name 
                } 
            }
        } 
        } 
    } 
    } 
          }' -f org=$ORGANIZATION -F number=$PROJECT_NUMBER)
          
echo 'PROJECT_ID='$(                  echo $PROJECT_DATA | jq '.data.organization.projectV2.id') >> $GITHUB_ENV
echo 'SPRINT_FIELD_ID='$(             echo $PROJECT_DATA | jq '.data.organization.projectV2.fields.nodes[] | select(.name== "Sprint") | .id') >> $GITHUB_ENV
echo 'CURRENT_ITERATION_OPTION_ID='$( echo $PROJECT_DATA | jq '.data.organization.projectV2.fields.nodes[] | select(.name == "Sprint") | .configuration.iterations | first | .id') >> $GITHUB_ENV
echo 'SPRINT_ROLE_FIELD_ID='$(        echo $PROJECT_DATA | jq '.data.organization.projectV2.fields.nodes[] | select(.name== "Sprint role") | .id') >> $GITHUB_ENV

echo 'RESPONSABILE_OPTION_ID='$(  echo $PROJECT_DATA | jq '.data.organization.projectV2.fields.nodes[] | select(.name== "Sprint role") | .options[] | select(.name=="Responsabile") |.id') >> $GITHUB_ENV
echo 'AMMINISTRATORE_OPTION_ID='$(echo $PROJECT_DATA | jq '.data.organization.projectV2.fields.nodes[] | select(.name== "Sprint role") | .options[] | select(.name=="Amministratore") |.id') >> $GITHUB_ENV
echo 'ANALISTA_OPTION_ID='$(      echo $PROJECT_DATA | jq '.data.organization.projectV2.fields.nodes[] | select(.name== "Sprint role") | .options[] | select(.name=="Analista") |.id') >> $GITHUB_ENV
echo 'VERIFICATORE_OPTION_ID='$(  echo $PROJECT_DATA | jq '.data.organization.projectV2.fields.nodes[] | select(.name== "Sprint role") | .options[] | select(.name=="Verificatore") |.id') >> $GITHUB_ENV
echo 'PROGRAMMATORE_OPTION_ID='$( echo $PROJECT_DATA | jq '.data.organization.projectV2.fields.nodes[] | select(.name== "Sprint role") | .options[] | select(.name=="Programmatore") |.id') >> $GITHUB_ENV
echo 'PROGETTISTA_OPTION_ID='$(   echo $PROJECT_DATA | jq '.data.organization.projectV2.fields.nodes[] | select(.name== "Sprint role") | .options[] | select(.name=="Progettista") |.id') >> $GITHUB_ENV
          
# Get issue data -------------------------------------------------------------------------
ISSUE_DATA=$(gh api graphql -f query='query($repo_owner: String!, $repo_name: String!, $issue_number:Int!) {
  repository(owner: $repo_owner, name: $repo_name) {
    issue(number: $issue_number) {
      id
      labels(first: 50) {
        nodes { name }
      }
    }
  }
}' -f repo_owner="GlitchHub-Team" -f repo_name="GlitchHub-Team.github.io" -F issue_number=$ISSUE_NUMBER)

AMMINISTRATORE_LABEL=$(echo $ISSUE_DATA | jq '.data.repository.issue.labels.nodes[] | select(.name == "task-amministratore")')
ANALISTA_LABEL=$(      echo $ISSUE_DATA | jq '.data.repository.issue.labels.nodes[] | select(.name == "task-analista")')
PROGETTISTA_LABEL=$(   echo $ISSUE_DATA | jq '.data.repository.issue.labels.nodes[] | select(.name == "task-progettista")')
PROGRAMMATORE_LABEL=$( echo $ISSUE_DATA | jq '.data.repository.issue.labels.nodes[] | select(.name == "task-programmatore")')
RESPONSABILE_LABEL=$(  echo $ISSUE_DATA | jq '.data.repository.issue.labels.nodes[] | select(.name == "task-responsabile")')
VERIFICATORE_LABEL=$(  echo $ISSUE_DATA | jq '.data.repository.issue.labels.nodes[] | select(.name == "task-verificatore")')


SPRINT_ROLE_OPTION_ID=""
if [[ $RESPONSABILE_LABEL ]]; then
    echo Task responsabile
    SPRINT_ROLE_OPTION_ID=$RESPONSABILE_OPTION_ID

elif [[ $AMMINISTRATORE_LABEL ]]; then
    echo Task amministratore
    SPRINT_ROLE_OPTION_ID=$AMMINISTRATORE_OPTION_ID

elif [[ $ANALISTA_LABEL ]]; then
    echo "Task analista"
    SPRINT_ROLE_OPTION_ID=$ANALISTA_OPTION_ID

elif [[ $VERIFICATORE_LABEL ]]; then
    echo "Task verificatore"
    SPRINT_ROLE_OPTION_ID=$VERIFICATORE_OPTION_ID

elif [[ $PROGETTISTA_LABEL ]]; then
    echo "Task progettista"
    SPRINT_ROLE_OPTION_ID=$PROGETTISTA_OPTION_ID

elif [[ $PROGRAMMATORE_LABEL ]]; then
    echo "Task programmatore"
    SPRINT_ROLE_OPTION_ID=$PROGRAMMATORE_OPTION_ID
else
    echo "Impossibile determinare ruolo"
fi

echo 'SPRINT_ROLE_OPTION_ID='$SPRINT_ROLE_OPTION_ID >> $GITHUB_ENV

# Add issue to project (and get Item ID) -------------------------------------------------------------------- 
ITEM_ID=$(gh api graphql -f query='
mutation($project:ID!, $issue:ID!) {
    addProjectV2ItemById(input: {projectId: $project, contentId: $issue}) {
        item {id}
    }
}' -f project=$PROJECT_ID -f issue=$ISSUE_NODE_ID --jq '.data.addProjectV2ItemById.item.id')
echo 'ITEM_ID='$ITEM_ID >> $GITHUB_ENV
