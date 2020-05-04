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
## Subnet Name Tag
variable "subnet_name" {
  type = "map"

  default = {
    public-a  = "public-subnet-a"
    public-c  = "public-subnet-c"
    private-a = "private-subnet-a"
    private-c = "private-subnet-c"
  }
}

variable "igw_name_tag" {
  default = "ys-igw"
}

variable "rt_name_tag" {
  default = "ys-rt"
}