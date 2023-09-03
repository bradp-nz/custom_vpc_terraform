resource "aws_subnet" "sn-reserved-C" {
  vpc_id            = aws_vpc.a4l-vpc1.id
  cidr_block        = "10.16.128.0/20"
  availability_zone = "us-east-1c"


  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 8)
  assign_ipv6_address_on_creation = true
}

resource "aws_subnet" "sn-db-C" {
  vpc_id            = aws_vpc.a4l-vpc1.id
  cidr_block        = "10.16.144.0/20"
  availability_zone = "us-east-1c"


  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 9)
  assign_ipv6_address_on_creation = true
}

resource "aws_subnet" "sn-app-C" {
  vpc_id            = aws_vpc.a4l-vpc1.id
  cidr_block        = "10.16.160.0/20"
  availability_zone = "us-east-1c"


  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 10)
  assign_ipv6_address_on_creation = true
}

resource "aws_subnet" "sn-web-C" {
  vpc_id            = aws_vpc.a4l-vpc1.id
  cidr_block        = "10.16.176.0/20"
  availability_zone = "us-east-1c"


  ipv6_cidr_block                 = cidrsubnet(aws_vpc.a4l-vpc1.ipv6_cidr_block, 8, 11)
  assign_ipv6_address_on_creation = true
}