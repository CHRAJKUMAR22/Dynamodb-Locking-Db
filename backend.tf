terraform {
  backend "s3" {
    bucket       = "terraform-state-demo-raju2k26"
    key          = "terraform.tfstate"
    region       = "ap-south-1"
    use_lockfile = true
  }
}
