resource "aws_instance" "bastion_ec2" {
  count                  = 1
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_pair
  subnet_id              = lookup(var.public_subnets, count.index % 2)
  vpc_security_group_ids = ["${aws_security_group.bastion_security_group.id}"]

  tags = {
    Name = "${var.bastion_name}_${count.index + 1}"
  }
}


output "instance_ids_bastion_public" {
  value = {
    for instance in aws_instance.bastion_ec2 :
    instance.id => instance.public_ip
  }
}
