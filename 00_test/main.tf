terraform {
  # Terraform 버전 지정
  required_version = ">= 1.0.0, < 2.0.0"

  # 공급자 지정
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_instance" "example" {
  ami           = "ami-09eb4311cbaecf89d"
  instance_type = "t2.micro"
  key_name      = "aws02-key"

  tags = {
    Name = "aws02-example"
    org  = "busanit"
  }
}
