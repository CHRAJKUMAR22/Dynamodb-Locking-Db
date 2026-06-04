terraform {

  backend "s3" {

    bucket         = "terraform-state-demo-raju2k26"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"

    encrypt = true
  }
}
