resource "google_project" "project" {
  name       = var.google_project_name
  project_id = var.google_project_id
  folder_id  = var.google_folder_name
  org_id     = var.org_id
}

# resource "google_folder" "folder" {
#   display_name = "Department 1"
#   parent       = "organizations/1234567"
# }