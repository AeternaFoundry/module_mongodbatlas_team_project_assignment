variable "team_project_assignments" {
  description = <<EOT
Map of team_project_assignments, attributes below
Required:
    - project_id
    - role_names
    - team_id
EOT

  type = map(object({
    project_id = string
    role_names = set(string)
    team_id    = string
  }))
}

