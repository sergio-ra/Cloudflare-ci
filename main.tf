terraform {
required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }
  cloud {
    organization = "sl-test"

    workspaces {
      name = "test-aws"
    }
  }
}