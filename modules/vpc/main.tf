//vpc network
resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = var.auto_create_subnetworks
  project                 = var.project
}


//subnets
resource "google_compute_subnetwork" "subnet" {
    for_each        = var.subnets
    provider        = google-beta
    name            = each.value.name
    ip_cidr_range   = each.value.cidr
    region          = each.value.region
    purpose         = each.value.purpose
    role            = each.value.role
    project         = var.project
    network         = google_compute_network.vpc_network.id
    depends_on      = [google_compute_network.vpc_network]
}
