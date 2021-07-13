terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.49.0"
    }
  }


provider "aws" {
  profile = "default"
  region  = "us-west-2"
  access_key = var.awsaccess
  secret_key = var.awssecret
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"
  

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
