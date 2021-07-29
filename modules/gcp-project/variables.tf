variable "google_folder_name" {
    description = "The folder name in which to add the project"
    type = string
    default = null
}

variable "org_id" {
    description = "The org in which to add the project"
    type = string
    default = null
}

variable "google_project_name" {
    description = "The display name of the project"
    type = string
}

variable "google_project_id" {
    description = "The project ID. Changing this forces a new project to be created."
    type = string
}
