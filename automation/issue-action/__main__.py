import argparse
import requests
import json
import jq
import os
from pprint import pprint

URL = "https://api.github.com/graphql"
GH_TOKEN = os.environ["GH_TOKEN"]

class JqStrings:
    GET_PROJECT_ID              = '.data.organization.projectV2.id'
    GET_SPRINT_FIELD_ID         = '.data.organization.projectV2.fields.nodes[] | select(.name== "Sprint") | .id'
    GET_CUR_ITER_OPTION_ID      = '.data.organization.projectV2.fields.nodes[] | select(.name == "Sprint") | .configuration.iterations | first | .id'
    GET_SPRINT_ROLE_FIELD_ID    = '.data.organization.projectV2.fields.nodes[] | select(.name== "Sprint role") | .id'

    GET_ROLE_OPTION_ID  = '.data.organization.projectV2.fields.nodes[] | select(.name== "Sprint role") | .options[] | select(.name=="%s") |.id'
    GET_LABEL_ID        = '.data.repository.issue.labels.nodes[] | select(.name == "%s")'

    GET_ISSUE_ITEM_ID   = '.data.addProjectV2ItemById.item.id'

ROLES = [
    "Responsabile",
    "Amministratore",
    "Analista",
    "Verificatore",
    "Programmatore",
    "Progettista"
]


def request_api(query: str, error_blocking: bool = True) -> dict:
    headers = {
        "Authorization": f"Bearer {GH_TOKEN}"
    }
    request = requests.post(URL, json={'query': query}, headers=headers)
    
    if request.status_code == 200:
        response = request.json()

        if error_blocking and (errors := response.get('errors')):
            print("ERRORE GraphQL:")
            pprint(errors)
            exit(1)

        return response
    else:
        raise Exception("Query failed to run by returning code of {}. {}".format(request.status_code, query))


def main():
    parser = argparse.ArgumentParser(
        prog="GlitchHub-Team Issue Automation",
        description="Automazione per gestione issue di GlitchHub-Team"
    )

    parser.add_argument(
        "project",
        help="Identificativo GH Project nella forma OWNER/PROJECT_ID"
    )

    parser.add_argument(
        "issue", type=str,
        help="Identificativo issue nella forma REPO_OWNER/REPO_NAME/ISSUE_NUMBER"
    )

    parser.add_argument(
        "issue_node_id", type=str,
        help="Node ID della issue da considerare"
    )

    parser.add_argument(
        "--iteration",
        action="store_true",
        help="Imposta il campo Sprint Iteration nell'issue"
    )

    parser.add_argument(
        "--role",
        action="store_true",
        help="Imposta il campo Sprint role nell'issue"
    )

    args = parser.parse_args()

    try:
        project_organization, project_number = args.project.strip(' "').split("/")
    except ValueError:
        print("ERROR: Il parametro project dev'essere nella forma OWNER/PROJECT_ID")
        exit(1)

    try:
        repo_owner, repo_name, issue_number = args.issue.strip(' "').split("/")
    except ValueError:
        print("ERROR: Il parametro issue dev'essere nella forma REPO_OWNER/REPO_NAME/ISSUE_NUMBER")
        exit(1)

    print("get_project_data...")
    (
        project_id,
        sprint_field_id,
        current_iter_option_id,
        sprint_role_field_id,
        sprint_role_option_ids
    ) = get_project_data(project_organization, project_number)

    print("get_issue_data...")
    sprint_role_option_id = get_issue_data(repo_owner, repo_name, issue_number, sprint_role_option_ids)

    print("add_issue...")
    item_id = add_issue(project_id, args.issue_node_id)
    
    if args.iteration:
        print("set_sprint_iteration...")
        set_sprint_iteration(
            project_id,
            item_id,
            sprint_field_id,
            current_iter_option_id
        )

    if args.role:
        print("set_sprint_role...")
        set_sprint_role(
            project_id,
            item_id,
            sprint_role_field_id,
            sprint_role_option_id,
        )

    print("Script eseguito con successo")



def get_project_data(
        organization: str,
        project_number: int
):
    result = request_api(f"""query {{ 
        organization(login: "{organization}"){{ 
        projectV2(number: {project_number}) {{ 
            id 
            fields(first:50) {{ 
            nodes {{ 
                ... on ProjectV2Field {{ 
                    id 
                    name 
                }}
                ... on ProjectV2IterationField {{
                    id
                    name
                    configuration {{
                        completedIterations {{
                            title
                            startDate
                            id
                        }}
                        iterations {{
                            title
                            startDate
                            id
                        }}
                    }}
                }}
                ... on ProjectV2SingleSelectField {{ 
                    id 
                    name 
                    options {{ 
                        id 
                        name 
                    }} 
                }}
            }} 
            }} 
        }} 
        }} 
    }}""")

    project_id              = jq.compile(JqStrings.GET_PROJECT_ID).input_value(result).first()
    sprint_field_id         = jq.compile(JqStrings.GET_SPRINT_FIELD_ID).input_value(result).first()
    current_iter_option_id  = jq.compile(JqStrings.GET_CUR_ITER_OPTION_ID).input_value(result).first()
    sprint_role_field_id    = jq.compile(JqStrings.GET_SPRINT_ROLE_FIELD_ID).input_value(result).first()

    sprint_role_option_ids = {}
    for role in ROLES:
        sprint_role_option_ids[role] = jq.compile(JqStrings.GET_ROLE_OPTION_ID % role).input_value(result).first()

    return (
        project_id,
        sprint_field_id,
        current_iter_option_id,
        sprint_role_field_id,
        sprint_role_option_ids
    )


def get_issue_data(
        repo_owner: str,
        repo_name: str,
        issue_number: int,
        sprint_role_option_ids: dict
) -> str|None:
    result = request_api(f"""query {{
    repository(owner: "{repo_owner}", name: "{repo_name}") {{
        issue(number: {issue_number}) {{
        id
        labels(first: 50) {{
            nodes {{ name }}
        }}
        }}
    }}
    }}""")

    label_presences = {}
    for role in ROLES:
        label_name = f"task-{role.lower()}"
        print(f"  -> searching for {label_name}...")
        label_presences[role] = bool(jq.compile(JqStrings.GET_LABEL_ID % label_name).input_value(result).all())

    sprint_role_option_id = None
    for role in ROLES:
        if label_presences[role]:
            print(f"  RUOLO: {role}")
            sprint_role_option_id = sprint_role_option_ids[role]
            break
    else:
        print("  RUOLO: nessun ruolo trovato")
    
    return sprint_role_option_id


def add_issue(
        project_id: str,
        issue_node_id: str
) -> str:
    result = request_api(f"""mutation {{
        addProjectV2ItemById(input: {{projectId: "{project_id}", contentId: "{issue_node_id}"}}) {{
            item {{id}}
        }}
    }}""")
    
    item_id = jq.compile(JqStrings.GET_ISSUE_ITEM_ID).input_value(result).first()
    return item_id


def set_sprint_iteration(
        project_id: str,
        item_id: str,
        sprint_field_id: str,
        current_iteration_option_id: str|None,
):
    if not current_iteration_option_id:
        print(f"ERRORE: Nel GitHub Project non esiste il valore del campo Sprint legato all'iterazione corrente."
              " Per far funzionare l'automation, si prega di crearlo nelle impostazioni del GitHub Project.")
        return exit(1)
 
    print(f"  -> current_iteration_option_id = {current_iteration_option_id}")

    result = request_api(f"""mutation {{
        updateProjectV2ItemFieldValue(input: {{
            projectId: "{project_id}"
            itemId: "{item_id}"
            fieldId: "{sprint_field_id}"
            value: {{ iterationId: "{current_iteration_option_id}" }}
        }}) {{
            projectV2Item {{id}}
        }}
    }}""")


def set_sprint_role(
        project_id: str,
        item_id: str,
        sprint_role_field_id: str,
        sprint_role_option_id: str|None,
):
    # Set non-empty sprint role 
    if sprint_role_option_id:
        print(f"  -> sprint_role_option_id = {sprint_role_option_id}")
        result = request_api(f"""mutation {{
            updateProjectV2ItemFieldValue(input: {{
                projectId: "{project_id}"
                itemId: "{item_id}"
                fieldId: "{sprint_role_field_id}"
                value: {{ singleSelectOptionId: "{sprint_role_option_id}" }}
            }}) {{
                projectV2Item {{id}}
            }}
        }}""")
    
    # Set empty sprint role
    else:
        print(f"  -> rimuovo lo Sprint Role")
        result = request_api(f"""mutation {{
            clearProjectV2ItemFieldValue(input: {{
            projectId: "{project_id}"
            itemId: "{item_id}"
            fieldId: "{sprint_role_field_id}"
            }}) {{
                projectV2Item {{id}}
            }}
        }}""")


if __name__ == "__main__":
    main()    
