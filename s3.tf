resource "aws_s3_bucket" "cm-terraform-000" {
  bucket = "ys-test-bucket${terraform.workspace}-000"
  acl    = "private"
}
