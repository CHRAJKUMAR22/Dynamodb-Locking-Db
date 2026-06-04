resource "aws_s3_bucket" "bucket" {

  bucket = "terraform-state-demo-raju2k26"

  tags = {
    Environment = "dev"
  }
}
