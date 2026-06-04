module "vpc" {

  source = "./modules/vpc"
}

module "ec2" {

  source = "./modules/ec2"

  vpc_id = module.vpc.vpc_id

  subnet_id = module.vpc.subnet_id

  instance_type = var.instance_type
}

module "s3" {

  source = "./modules/s3"
}
