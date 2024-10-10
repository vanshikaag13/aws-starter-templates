terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "4.0.6"
    }
  }
  required_version = ">= 1.2.0"
}
provider "aws" {
  region  = "us-west-2"
}
provider "tls"{
  # No specific configuration is required for TLS
}