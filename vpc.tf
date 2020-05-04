resource "aws_vpc" "this" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = "default"
  enable_dns_support   = true

  tags = {
    Name = "${var.vpc_name}-vpc"
  }
}
