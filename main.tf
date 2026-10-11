resource "mongodbatlas_team_project_assignment" "team_project_assignments" {
  for_each = var.team_project_assignments

  project_id = each.value.project_id
  role_names = each.value.role_names
  team_id    = each.value.team_id
}

