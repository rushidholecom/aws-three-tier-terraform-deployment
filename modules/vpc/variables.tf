variable "project" {
  default = "three-tier"
}

variable "cidr" {}

variable "public_subnet_cidr" {
  default = "171.10.0.0/24"
}

variable "private_subnet_cidr" {
  default = "171.10.1.0/24"
}

variable "public_avaibilityzone" {
  default = "ap-southeast-1a"
}

variable "private_avaibilityzone" {
  default = "ap-southeast-1b"
}
output "vpc_id" {
  value = aws_vpc.project_vpc.id
  sensitive = true
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  value = aws_subnet.private_subnet
}