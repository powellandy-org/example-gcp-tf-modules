terraform {
    backend "gcs" {
        bucket  = "powellandy-platform-state"
        prefix  = "terraform-vpc/state"
    }
}

provider "google" {
    project = "chicken-egg-demo"
    region  = "us-central1"
    zone    = "us-central1-c"
}

provider "google-beta" {
    project = "chicken-egg-demo"
    region  = "us-central1"
    zone    = "us-central1-c"
}

data "google_client_config" "provider" {}

module "vpc" {
    source = "../modules/vpc"
    vpc_name = "test-vpc"
    subnets = {
        "test" = {
            name        = "test-subnet"
            cidr        = "10.10.0.0/14"
            region      = "us-central1"
            purpose     = "PRIVATE"
            role        = ""
        }
    }
}
