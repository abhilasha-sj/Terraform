provider "aws" {
  region = "us-east-1"
}

variable "instance_type" {
  description = "The type of  EC2 instance to create"
  type        = string
  default     = "t3.micro"
}

variable "ami" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string  
}

resource "aws_instance" "example" {
  ami                     = var.ami
  instance_type           = var.instance_type
}

output "name" {
  value = aws_instance.example.id
}