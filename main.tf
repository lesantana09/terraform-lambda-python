terraform {
  required_version = "1.7.3"
}

provider "aws" {
    region  = var.aws_region
}