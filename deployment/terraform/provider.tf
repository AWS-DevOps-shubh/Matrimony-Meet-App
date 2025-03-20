terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.33"
    }
  }
}

# configured aws provider with proper credentials
provider "aws" {
  region    = "eu-west-1"
  profile   = "default"
}
