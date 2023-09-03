resource "aws_vpc" "a4l-vpc1" {
  cidr_block                       = "10.16.0.0/16"
  assign_generated_ipv6_cidr_block = true
  enable_dns_hostnames             = true
  enable_dns_support               = true
}