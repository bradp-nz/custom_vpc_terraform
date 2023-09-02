#Terraform_Cloud(Remote)
provider "aws" {
  region  = var.availability_zone
  profile = var.profile
}