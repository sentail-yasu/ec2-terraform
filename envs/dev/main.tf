## VPC
module "dev" {
  source         = "../../"
  vpc_cidr       = var.vpc_cidr
  vpc_name       = var.vpc_name
  subnet_cidr    = var.subnet_cidr
  igw_name_tag   = var.igw_name_tag
  name           = var.name
  vpc_id         = var.vpc_id
  instance_class = var.instance_class
  db_username    = var.db_username
}
