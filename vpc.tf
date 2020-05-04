resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_support   = true

  tags = {
    Name = "${var.vpc_name}-vpc"
  }
}
