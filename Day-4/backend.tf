terraform {
  backend "s3" {
    bucket         = "remote-backend-bucket-abhilashasj"
    key            = "terraform.tfstate"
    region        = "us-east-1"
    use_lockfile  = false
    dynamodb_table = "remote-backend-dynamodb-table"
  }
}