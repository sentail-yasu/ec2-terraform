variable "cidrs" {
  default = [
    "0.0.0.0/0"
  ]
}

variable "vpc_id" {
  default = "vpc-0a2255c398b001a89"
}

variable "app_name" {
  default = "ys-dev-web"
}

variable "bastion_name" {
  default = "ys-dev-bastion"
}
