#provider_variables: 
#aws_profile
variable "profile" {
  type    = string
  default = "Testing"
}
#region
variable "region" {
  type    = string
  default = "us-east-1"
}

#availability_zones
variable "availability_zone_a" {
  type    = string
  default = "us-east-1a"
}
variable "availability_zone_b" {
  type    = string
  default = "us-east-1b"
}
variable "availability_zone_c" {
  type    = string
  default = "us-east-1c"
}
