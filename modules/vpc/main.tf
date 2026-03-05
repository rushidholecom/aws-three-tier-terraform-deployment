resource "aws_vpc" "project_vpc" {
  tags = {
    name = "project_vpc"
  }
  cidr_block = var.cidr
  instance_tenancy = "default"
  
}