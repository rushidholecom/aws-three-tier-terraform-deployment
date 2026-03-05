variable "project" {
  default = "three-tier"
}

variable "cidr" {}

variable "public_subnet_cidr" {
  default = "171.10.0.0/22"
}

variable "private_subnet_cidr" {
  default = "171.10.1.0/22"
}

variable "public_avaibilityzone" {
  default = "ap-southeast-1a"
}

variable "private_avaibilityzone" {
  default = "ap-southeast-1b"
}