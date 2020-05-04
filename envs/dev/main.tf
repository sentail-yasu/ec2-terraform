## VPC
module "dev" {
  source         = "../../"

## vpcの定義
  vpc_cidr       = var.vpc_cidr
  vpc_name       = var.vpc_name
  subnet_cidr    = var.subnet_cidr
  subnet_name    = var.subnet_name
  igw_name_tag   = var.igw_name_tag
