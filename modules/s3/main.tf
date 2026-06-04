resource "aws_s3_bucket" "bucket" {

  bucket = "terraform-state-demo2k26"

  tags = {
    Environment = "dev"
  }
}
