resource "aws_subnet" "sn-reserved-A" {
  vpc_id     = aws_vpc.a4l-vpc1.id
  cidr_block = "10.16.0.0/20"
  availability_zone = "us-east-1a"


  ipv6_cidr_block = "${cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 0)}"
  assign_ipv6_address_on_creation = true
}

resource "aws_subnet" "sn-db-A" {
  vpc_id     = aws_vpc.a4l-vpc1.id
  cidr_block = "10.16.16.0/20"
  availability_zone = "us-east-1a"


  ipv6_cidr_block = "${cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 1)}"
  assign_ipv6_address_on_creation = true
}

resource "aws_subnet" "sn-app-A" {
  vpc_id     = aws_vpc.a4l-vpc1.id
  cidr_block = "10.16.32.0/20"
  availability_zone = "us-east-1a"


  ipv6_cidr_block = "${cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 2)}"
  assign_ipv6_address_on_creation = true
}

resource "aws_subnet" "sn-web-A" {
  vpc_id     = aws_vpc.a4l-vpc1.id
  cidr_block = "10.16.48.0/20"
  availability_zone = "us-east-1a"


  ipv6_cidr_block = "${cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 3)}"
  assign_ipv6_address_on_creation = true
}