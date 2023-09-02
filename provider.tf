#AWS provider
provider "aws" {
  region  = var.availability_zone
  profile = var.profile
}
