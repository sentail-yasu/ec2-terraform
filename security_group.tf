resource "aws_security_group" "postgres" {
    name               = "${var.name}-db-sg"
    description        = "for postgres"
    vpc_id             = "${aws_vpc.test.id}"
    ingress {
        from_port      = 5432
        to_port        = 5432
        protocol       = "tcp"
        cidr_blocks    = ["10.1.0.0/16"]
    }
    egress {
        from_port      = 0
        to_port        = 0
        protocol       = "-1"
        cidr_blocks    = ["0.0.0.0/0"]
    }
}

# RDSに設定するセキュリティグループ
resource "aws_security_group" "posgre_security_group" {
  name   = "${var.name}-db-sg"
  vpc_id = var.vpc_id

  ingress {
    from_port       = "5432"
    to_port         = "5432"
    protocol        = "tcp"
    cidr_blocks     = ["10.1.0.0/16"]
  }

  egress {
      from_port      = 0
      to_port        = 0
      protocol       = "-1"
      cidr_blocks    = ["0.0.0.0/0"]
  }
}

  tags = {
    Name = "${var.app_name}-db-sg"
  }
}

output "db_sg_id" {
  value = aws_security_group.db_security_group.id
}