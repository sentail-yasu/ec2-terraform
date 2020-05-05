## VPC
module "dev" {
  source             = "../../"

  vpc_cidr           = var.vpc_cidr
  vpc_name           = var.vpc_name
  subnet_cidr        = var.subnet_cidr
  igw_name_tag       = var.igw_name_tag
  name               = var.name
  vpc_id             = var.vpc_id
  rds_instance_class = var.rds_instance_class
  database_name      = var.database_name
  db_username        = var.db_username
  db_password        = var.db_password

}

module "iam" {
  source = "../../modules/iam/"

  region             = var.region
}
