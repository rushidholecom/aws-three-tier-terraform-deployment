provider "aws" {
  region = "ap-southeast-1"
}

module "project" {
  source = "./modules/vpc"
  cidr = "171.10.0.0/20"
}

module "rds" {
  source = "./modules/rds"
  vpc_id = module.project.vpc_id
  private_subnet = module.project.private_subnet_id
  depends_on = [ module.project ]
}

