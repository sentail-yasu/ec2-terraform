resource "aws_instance" "bastion_ec2" {
  count                  = 1
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_pair
  subnet_id              = lookup(var.public_subnets, count.index % 2)
  vpc_security_group_ids = [data.terraform_remote_state.security_group.outputs.bastion_sg_id]

  tags = {
    Name = "${var.bastion_name}_${count.index + 1}"
  }
}
