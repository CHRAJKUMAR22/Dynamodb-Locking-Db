resource "aws_security_group" "web" {

  name = "terraform-sg"

  vpc_id = var.vpc_id

  ingress {

    from_port = 22
    to_port = 22
    protocol = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {

    from_port = 0
    to_port = 0
    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {

  ami = "ami-0e86e20dae9224db8"

  instance_type = var.instance_type

  subnet_id = var.subnet_id

  vpc_security_group_ids = [
    aws_security_group.web.id
  ]

  tags = {
    Name = "terraform-ec2"
  }
}
