terraform {
    required_version = "~> 1.1.5" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
     }
    }
   }

provider "aws" {
        region = "ap-south-1" 
        profile = "default"
	}

resource "aws_instance" "Raminfra" {
	ami = "ami-06a0b4e3b7eb7a300 (64-bit x86)" 
	instance_type = "t2.micro"
}
