## VPC
module "dev" {
  source         = "../../"

  vpc_cidr_block = var.vpc_cidr_block
  vpc_name       = var.vpc_name
}
