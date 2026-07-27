terraform {

  required_providers {

    aws = {

      source = "hashicorp/aws"

      version = "~> 6.0"

    }

  }

}


provider "aws" {

  region = var.aws_region

}

module "vpc" {

  source = "./modules/vpc"


  project_name = var.project_name

}

module "security_group" {

  source = "./modules/security-group"


  project_name = var.project_name

  vpc_id = module.vpc.vpc_id

}