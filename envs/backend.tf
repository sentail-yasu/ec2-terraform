terraform {
  required_version = ">= 0.12"

  backend "s3" {
    bucket  = "tfstate-bucket-ys-codecommit"
    region  = "ap-northeast-1"
    key     = "dev/terraform.tfstate"
    encrypt = true
  }
}
