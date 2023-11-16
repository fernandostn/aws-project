provider "aws" {
  region  = "us-east-2"
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    bucket = "fss-aws-terraform-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}
module "aws-infra" {
  source                  = "https://github.com/fernandostn/aws-terraform.git"
  name                    = "aws-infra"
}