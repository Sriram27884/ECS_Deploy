provider "aws" {
  region = "ap-southeast-1" # Change this to your desired AWS region
}

resource "aws_ecs_cluster" "my_cluster" {
  name = "Sriram_Test_ECS" # Change this to your desired cluster name
}
