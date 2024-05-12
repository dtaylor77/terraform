provider "aws" {
  alias   = "canada"
  region  = "ca-central-1"
  profile = var.aws_profile
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.49.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket  = "terraform-state-file-management"
    key     = "s3://terraform-state-file-management/security/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
