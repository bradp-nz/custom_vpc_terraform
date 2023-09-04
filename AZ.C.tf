resource "aws_subnet" "sn-reserved-C" {
  vpc_id                          = aws_vpc.a4l-vpc1.id
  cidr_block                      = "10.16.128.0/20"
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 8)
  availability_zone               = var.availability_zone_c
  assign_ipv6_address_on_creation = true


  tags = {
    Name = "sn-reserved-C"
  }
}

resource "aws_subnet" "sn-db-C" {
  vpc_id                          = aws_vpc.a4l-vpc1.id
  cidr_block                      = "10.16.144.0/20"
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 9)
  availability_zone               = var.availability_zone_c
  assign_ipv6_address_on_creation = true


  tags = {
    Name = "sn-db-C"
  }
}

resource "aws_subnet" "sn-app-C" {
  vpc_id                          = aws_vpc.a4l-vpc1.id
  cidr_block                      = "10.16.160.0/20"
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 10)
  availability_zone               = var.availability_zone_c
  assign_ipv6_address_on_creation = true


  tags = {
    Name = "sn-app-C"
  }
}

resource "aws_subnet" "sn-web-C" {
  vpc_id                          = aws_vpc.a4l-vpc1.id
  cidr_block                      = "10.16.176.0/20"
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 11)
  availability_zone               = var.availability_zone_c
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true


  tags = {
    Name = "sn-web-C"
  }
}