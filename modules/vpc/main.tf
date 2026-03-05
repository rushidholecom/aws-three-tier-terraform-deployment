resource "aws_vpc" "project_vpc" {
  tags = {
    name = "project-vpc"
  }
  cidr_block = var.cidr
  instance_tenancy = "default"
}

resource "aws_subnet" "public_subnet" {
  tags = {
    name = "${var.project}-public-subnet"
  }
  cidr_block = var.public_subnet_cidr
  vpc_id = "${aws_vpc.project_vpc.id}"
  map_public_ip_on_launch = true
  availability_zone = var.public_avaibilityzone
}

resource "aws_subnet" "private_subnet" {
  tags = {
    name = "${var.project}-private-subnet"
  }
  cidr_block = var.private_subnet_cidr
  vpc_id = "${aws_vpc.project_vpc.id}"
  map_public_ip_on_launch = false
  availability_zone = var.private_avaibilityzone
}