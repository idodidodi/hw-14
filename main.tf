provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  owners = ["099720109477"] # Canonical
}

data "aws_vpc" "default" {
  default = true
}

module "server_sg" {
  source      = "./modules/aws_sg"
  vpc_id      = data.aws_vpc.default.id
  allowed_ips = ["147.235.180.110/32", "79.177.129.158/32"]
}

module "ec2" {
  source             = "./modules/aws_ec2"
  ami_id             = data.aws_ami.ubuntu.id
  instance_type      = "t2.micro"
  security_group_ids = [module.server_sg.security_group_id]
  user_data          = "${file("main.sh")}"
  instance_name      = "learn-ansible"
  count              = 0
}
