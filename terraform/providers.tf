terraform {
  required_version = "~> 1.5.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.89.0"
    }
  }
}

# Provider definition
provider "aws" {
  region = var.region

  default_tags {
    tags = {
      "Environment" = var.env_type,
      "Project"     = "terraform-network",
      "ManagedBy"   = "Terraform"
    }
  }
}
