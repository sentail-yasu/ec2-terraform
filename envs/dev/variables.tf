variable "vpc_cidr"{
  default = "10.1.0.0/16"
}

variable "vpc_name" {
  default = "dev-ys"
}

variable "subnet_cidr" {
  type = "map"

  default = {
    public-a  = "10.1.10.0/24"
    public-c  = "10.1.20.0/24"
    private-a = "10.1.100.0/24"
    private-c = "10.1.200.0/24"
  }
}

variable "igw_name_tag" {
  default = "ys-igw"
}
