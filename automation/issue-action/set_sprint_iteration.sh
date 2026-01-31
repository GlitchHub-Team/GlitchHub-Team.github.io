#!/bin/bash

# Variabili env richieste:
# - $CURRENT_ITERATION_OPTION_ID
# - $PROJECT_ID
# - $ITEM_ID
# - $SPRINT_FIELD_ID

if [[ $CURRENT_ITERATION_OPTION_ID ]]; then
  gh api graphql -f query='
  mutation (
    $project_id: ID!
    $item_id: ID!
    $sprint_field: ID!
    $sprint_value: String!
  ) {
    updateProjectV2ItemFieldValue(input: {
      projectId: $project_id
      itemId: $item_id
      fieldId: $sprint_field
      value: { iterationId: $sprint_value }
    }) {
      projectV2Item {id}
    }

  }' \
  -f project_id=$PROJECT_ID \
  -f item_id=$ITEM_ID \
  -f sprint_field=$SPRINT_FIELD_ID \
  -f sprint_value=${CURRENT_ITERATION_OPTION_ID//\"/} \
  --silent
else
    echo "ERROR: Nel GitHub Project non esiste il valore del campo Sprint legato all'iterazione corrente. Per far funzionare l'automation, si prega di crearlo nelle impostazioni del GitHub Project."
    exit 1
fi