provider "aws" {
  region = "eu-central-1"
  access_key = "XXXXXXXXXXXXXXXXXXX"
  secret_key = "XXXXXXXXXXXXXXXXXXX"
}

module "instances" {
  source              = "../modules/instance"
  ami                 = "ami-06dd92ecc74fdfb36"
  instance_type       = "t2.micro"
  key_name            = "ope-key"
  availability_zones  = ["eu-central-1a", "eu-central-1b"]
  name                = "prod-instance"
}

module "ansible_docker" {
  source = "../modules/ansible-docker"
  # Define Ansible and Docker configurations for prod environment
}

module "vpc_prod" {
  source     = "../modules/vpc"
  cidr_block = "10.1.0.0/16"
  vpc_name   = "prod-vpc"
}
