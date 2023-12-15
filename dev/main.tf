provider "aws" {
  region = "eu-west-1"
  access_key = "XXXXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXX"
}

module "instances" {
  source              = "../modules/instance"
  ami                 = "ami-0666c668000b91fcb"
  instance_type       = "t2.micro"
  key_name            = "ope1-key"
  availability_zones  = ["eu-west-1a", "eu-west-1b"]
  name                = "dev-instance"
}

module "ansible_docker" {
  source = "../modules/ansible-docker"
  # Define Ansible and Docker configurations for dev environment
}

module "vpc_dev" {
  source     = "../modules/vpc"
  cidr_block = "10.0.0.0/16"
  vpc_name   = "dev-vpc"
}

