terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.28"
    }
  }

  backend "s3" {
    bucket = "venaws-remote-state"
    key    = "roboshop-dev-eks"
    region = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}