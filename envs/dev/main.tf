## VPC
module "dev" {
  source         = "../../"
  vpc_cidr       = var.vpc_cidr
  vpc_name       = var.vpc_name
  subnat_name    = var.subnet_name
  subnet_cidr    = var.subnet_cidr
  igw_name_tag   = var.igw_name_tag

}
