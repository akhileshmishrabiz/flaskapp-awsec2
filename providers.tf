# providers.tf
terraform {
  required_version = "1.5.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12"
    }
  }
}

provider "aws" {
  region     = var.region
}

# Using remote backend
terraform {
  backend "s3" {
    bucket = var.tfstate_bucket
    key    = "tfstate"
    region = var.region
  }
}

