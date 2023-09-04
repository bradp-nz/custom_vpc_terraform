resource "aws_subnet" "sn-reserved-A" {
  vpc_id                          = aws_vpc.a4l-vpc1.id
  cidr_block                      = "10.16.0.0/20"
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 0)
  availability_zone               = var.availability_zone_a
  assign_ipv6_address_on_creation = true


  tags = {
    Name = "sn-reserved-A"
  }
}

resource "aws_subnet" "sn-db-A" {
  vpc_id                          = aws_vpc.a4l-vpc1.id
  cidr_block                      = "10.16.16.0/20"
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 1)
  availability_zone               = var.availability_zone_a
  assign_ipv6_address_on_creation = true


  tags = {
    Name = "sn-db-A"
  }
}

resource "aws_subnet" "sn-app-A" {
  vpc_id                          = aws_vpc.a4l-vpc1.id
  cidr_block                      = "10.16.32.0/20"
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 2)
  availability_zone               = var.availability_zone_a
  assign_ipv6_address_on_creation = true


  tags = {
    Name = "sn-app-A"
  }
}

resource "aws_subnet" "sn-web-A" {
  vpc_id                          = aws_vpc.a4l-vpc1.id
  cidr_block                      = "10.16.48.0/20"
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 3)
  availability_zone               = var.availability_zone_a
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true


  tags = {
    Name = "sn-web-A"
  }
}