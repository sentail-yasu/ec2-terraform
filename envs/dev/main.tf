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

  region             = var.region
  ami_id             = var.ami_id
  instance_count     = var.instance_count
  public_subnets     = var.public_subnets
  private_subnets    = var.private_subnets
  instance_type      = var.instance_type
  key_pair           = var.key_pair
  app_name           = var.app_name
  bastion_name       = var.bastion_name


}

#module "iam" {
#  source = "../../modules/iam/"
#  name               = var.name
#  region             = var.region
#}
