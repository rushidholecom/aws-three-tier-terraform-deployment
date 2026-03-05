provider "aws" {
      region = "ap-southeast-1"
}

module "terraform" {
  source = "./modules/vpc"
}