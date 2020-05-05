# RDSに設定するセキュリティグループ
resource "aws_security_group" "posgre_security_group" {
  name   = "${var.name}-posgre-sg"
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
  tags = {
    Name = "${var.name}-posgre-sg"
  }
}

resource "aws_security_group" "alb" {
  name   = "${var.name}-alb-sg"
  vpc_id = var.vpc_id

  ingress {
    from_port       = "443"
    to_port         = "443"
    protocol        = "tcp"
    cidr_blocks     = ["118.241.89.87/32"]
  }

  egress {
      from_port      = 0
      to_port        = 0
      protocol       = "-1"
      cidr_blocks    = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.name}-alb-sg"
  }
}

output "db_sg_id" {
  value = aws_security_group.posgre_security_group.id
}

# bastionに設定するセキュリティグループ
resource "aws_security_group" "bastion_security_group" {
  name   = "${var.bastion_name}-sg"
  vpc_id = var.vpc_id

  ingress {
    from_port   = "22"
    to_port     = "22"
    protocol    = "tcp"
    cidr_blocks = ["118.241.89.87/32"]
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.bastion_name}-sg"
  }
}

output "bastion_sg_id" {
  value = aws_security_group.bastion_security_group.id
}
