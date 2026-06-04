resource "aws_s3_bucket" "bucket" {

  bucket = "terraform-demo-raju-bucket"

  tags = {
    Environment = "dev"
  }
}
