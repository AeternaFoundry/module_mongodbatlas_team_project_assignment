output "team_project_assignments_project_id" {
  description = "Map of project_id values across all team_project_assignments, keyed the same as var.team_project_assignments except keys with no project_id are omitted"
  value       = { for k, v in mongodbatlas_team_project_assignment.team_project_assignments : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "team_project_assignments_role_names" {
  description = "Map of role_names values across all team_project_assignments, keyed the same as var.team_project_assignments except keys with no role_names are omitted"
  value       = { for k, v in mongodbatlas_team_project_assignment.team_project_assignments : k => v.role_names if v.role_names != null && length(v.role_names) > 0 }
}
output "team_project_assignments_team_id" {
  description = "Map of team_id values across all team_project_assignments, keyed the same as var.team_project_assignments except keys with no team_id are omitted"
  value       = { for k, v in mongodbatlas_team_project_assignment.team_project_assignments : k => v.team_id if v.team_id != null && length(v.team_id) > 0 }
}

