resource "aws_subnet" "sn-reserved-B" {
  vpc_id                          = aws_vpc.a4l-vpc1.id
  cidr_block                      = "10.16.64.0/20"
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 4)
  availability_zone               = var.availability_zone_b
  assign_ipv6_address_on_creation = true


  tags = {
    Name = "sn-reserved-B"
  }
}

resource "aws_subnet" "sn-db-B" {
  vpc_id                          = aws_vpc.a4l-vpc1.id
  cidr_block                      = "10.16.80.0/20"
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 5)
  availability_zone               = var.availability_zone_b
  assign_ipv6_address_on_creation = true


  tags = {
    Name = "sn-db-B"
  }

}

resource "aws_subnet" "sn-app-B" {
  vpc_id                          = aws_vpc.a4l-vpc1.id
  cidr_block                      = "10.16.96.0/20"
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 6)
  availability_zone               = var.availability_zone_b
  assign_ipv6_address_on_creation = true


  tags = {
    Name = "sn-app-B"
  }
}

resource "aws_subnet" "sn-web-B" {
  vpc_id                          = aws_vpc.a4l-vpc1.id
  cidr_block                      = "10.16.112.0/20"
  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 7)
  availability_zone               = var.availability_zone_b
  map_public_ip_on_launch         = true
  assign_ipv6_address_on_creation = true


  tags = {
    Name = "sn-web-B"
  }
}