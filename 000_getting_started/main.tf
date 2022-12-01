terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "setkyar"

    workspaces {
      name = "getting-started"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.43.0"
    }
  }
}

locals {
  project_name = "Set"
}
