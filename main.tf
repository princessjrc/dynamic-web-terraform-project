# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "programmatic-user"
}

# Stores the Terraform state file on Amazon S3
terraform {
  backend "s3" {
    bucket = "jordancampbell-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "programmatic-user"
  }
}