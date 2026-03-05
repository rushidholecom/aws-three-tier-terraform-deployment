resource "aws_vpc" "project_vpc" {
  tags = {
    name = "project-vpc"
  }
  cidr_block = "171.10.0.0/20"
  instance_tenancy = "default"
}
