## VPC
module "dev" {
  source         = "../../"

  vpc_cidr_block = var.vpc_cidr
  vpc_name       = var.vpc_name
}
