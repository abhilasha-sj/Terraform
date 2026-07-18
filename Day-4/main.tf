provider "aws" {
  region = "us-east-1"
  
}

resource "aws_instance" "remote-backend-example" {
  ami                         = var.ami
  instance_type               = var.instance_type  
}

resource "aws_s3_bucket" "remote-backend-example" {
  bucket = "remote-backend-bucket-abhilashasj"
}

resource "aws_dynamodb_table" "remote-backend-dynamodb" {
  name         = "remote-backend-dynamodb-table"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "id"
    type = "S"
  }

  hash_key = "id"
}