resource "aws_route_table" "a4l-vpc1-rt-web" {
  vpc_id = aws_vpc.a4l-vpc1.id

  route {
    cidr_block = "10.16.0.0/16"
    gateway_id = aws_internet_gateway.a4l-vpc1-igw.id
  }

  route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = aws_internet_gateway.a4l-vpc1-igw.id
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.sn-web-A.id
  route_table_id = aws_route_table.a4l-vpc1-rt-web.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.sn-web-B.id
  route_table_id = aws_route_table.a4l-vpc1-rt-web.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.sn-web-C.id
  route_table_id = aws_route_table.a4l-vpc1-rt-web.id
} 