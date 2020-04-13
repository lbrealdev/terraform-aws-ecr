provider "aws" {
  region = "eu-central-1"
}

module "ecr" {
  source = "./modules/ecr"
}