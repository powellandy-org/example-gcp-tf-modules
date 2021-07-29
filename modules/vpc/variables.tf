variable "vpc_name" {
    description = "The name for the VPC Network"
    type = string
}

variable "project" {
    description = "The project name for the VPC Network"
    type = string
}

variable "auto_create_subnetworks" {
    description = "Boolean value to request default subnets"
    type = bool
    default = false
}

variable "subnets" {
    description = "array of subnet data"
    type = map(object({
        name        = string
        cidr        = string
        region      = string
        purpose     = string
        role        = string
    }))
    default = {}
}
