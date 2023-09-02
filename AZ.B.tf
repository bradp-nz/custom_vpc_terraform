resource "aws_subnet" "sn-reserved-B" {
  vpc_id     = aws_vpc.a4l-vpc1.id
  cidr_block = "10.16.64.0/20"
  availability_zone = "us-east-1b"


  ipv6_cidr_block = "${cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 4)}"
  assign_ipv6_address_on_creation = true
}

resource "aws_subnet" "sn-db-B" {
  vpc_id     = aws_vpc.a4l-vpc1.id
  cidr_block = "10.16.80.0/20"
  availability_zone = "us-east-1b"


  ipv6_cidr_block = "${cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 5)}"
  assign_ipv6_address_on_creation = true
}

resource "aws_subnet" "sn-app-B" {
  vpc_id     = aws_vpc.a4l-vpc1.id
  cidr_block = "10.16.96.0/20"
  availability_zone = "us-east-1b"


  ipv6_cidr_block = "${cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 6)}"
  assign_ipv6_address_on_creation = true
}

resource "aws_subnet" "sn-web-B" {
  vpc_id     = aws_vpc.a4l-vpc1.id
  cidr_block = "10.16.112.0/20"
  availability_zone = "us-east-1b"


  ipv6_cidr_block = "${cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 7)}"
  assign_ipv6_address_on_creation = true
}