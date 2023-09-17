provider "aws" {
  region = "ap-southeast-1" # Change this to your desired AWS region
}

resource "aws_ecs_cluster" "my_cluster" {
  name = "Sriram_Test_ECS" # Change this to your desired cluster name
}

terraform {
  required_providers {
    aws = {
      source  = "aws"
      version = "2.70.0"
    }
  }

  backend "s3" {
    bucket = "terraform-state-bucket"
    key    = "state/terraform_state.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
