terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 1.7.4"
    }
  }
}
provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
 }

provider "aws" {
  alias = "ap-south-1"
  region =  "ap-south-1"
 }

