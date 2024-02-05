# terraform version
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.34.0"
    }
  }
}
//aws Details
provider "aws" {
    region = "us-west-1"
   // profile = "default"
access_key = AKIAT3CY7WA2SLZEJH5J
secret_key = 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
}
