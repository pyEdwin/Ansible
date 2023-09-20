terraform {
    required_providers {
        aws = {
            source = "harshicorp/aws"
            version = "5.17.0"
        }
    }
}

provider "aws" {
    region= var.region
    profile = "terraform"

}