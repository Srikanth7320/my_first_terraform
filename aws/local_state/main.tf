terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-2"
}


resource "aws_instance" "Terraform-Demo" {
  # This is the specific ID for Ubuntu 24.04 LTS in us-east-1
  # Note: This ID changes every time Canonical releases a security patch!
  ami           = "ami-02774d409be696d81" 
  
  instance_type = "t3.micro"

  tags = {
    Name = "Ubuntu24-Manual"
  }
}