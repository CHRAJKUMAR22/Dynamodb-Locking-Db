resource "aws_s3_bucket" "bucket" {

  bucket = "raju-demo-app-bucket-2026-001"

  tags = {
    Environment = "dev"
  }
}
