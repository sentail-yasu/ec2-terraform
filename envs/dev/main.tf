## VPC
module "dev" {
  source         = "../../"

  vpc_cidr = var.vpc_cidr
  vpc_name       = var.vpc_name
}
