resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_support   = true

  tags = {
    Name = "${var.vpc_name}-vpc"
  }
}
