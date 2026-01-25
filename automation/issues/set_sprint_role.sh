#!/bin/bash

# Variabili env richieste:
# - $PROJECT_ID
# - $ITEM_ID
# - $SPRINT_ROLE_FIELD_ID
# - $SPRINT_ROLE_OPTION_ID

if [[ $SPRINT_ROLE_OPTION_ID ]]; then
  gh api graphql -f query='
  mutation (
    $project_id: ID!
    $item_id: ID!
    $sprint_role_field: ID!
    $sprint_role_value: String!
  ) {
    updateProjectV2ItemFieldValue(input: {
      projectId: $project_id
      itemId: $item_id
      fieldId: $sprint_role_field
      value: { singleSelectOptionId: $sprint_role_value }
    }) {
        projectV2Item {id}
    }
  
  }' \
  -f project_id=$PROJECT_ID \
  -f item_id=$ITEM_ID \
  -f sprint_role_field=$SPRINT_ROLE_FIELD_ID \
  -f sprint_role_value=$SPRINT_ROLE_OPTION_ID \
  --silent
else
    echo ERROR: Non è stato trovato l'opzione Sprint Role del GitHub Project. Verificare l'esistenza di tutti gli sprint role.
    exit 1
fi