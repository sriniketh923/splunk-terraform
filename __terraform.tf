###############################################
# Base Terraform configuration.  DO NOT EDIT. #
###############################################

provider "splunk" {
  url                  = ""
  # username             = "admin"
  # password             = ""
  auth_token = ""
  insecure_skip_verify = true
}

terraform {
  backend "local" {
    path = "terraform.tfstate"
  }

  required_version = ">= 0.13"
  
  required_providers {
    splunk = {
      source  = "splunk/splunk"
      version = "1.4.17"
    }
  }
}

# module "global_variables" {
#   source = "../../../modules"
# }
