terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.42.0"
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

