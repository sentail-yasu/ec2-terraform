provider "aws" {
  region  = "ap-northeast-1"
  version = "2.12.0"
}

terraform {
  required_version = ">= 0.12"

  backend "s3" {
    bucket  = "tfstate-bucket-ys"
    region  = "ap-northeast-1"
    key     = "dev/terraform.tfstate"
    encrypt = true
  }
}

## VPC
module "dev" {
  source         = "../../"
  vpc_cidr       = var.vpc_cidr
  vpc_name       = var.vpc_name
