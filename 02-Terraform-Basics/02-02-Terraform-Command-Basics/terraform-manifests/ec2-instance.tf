# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.21" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "eu-west-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-0b3e7dd7b2a99b08d" # Amazon Linux in eu-west-1, update as per your region
  instance_type = "t2.micro"
}
