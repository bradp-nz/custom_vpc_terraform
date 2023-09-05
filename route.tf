resource "aws_route_table" "a4l-vpc1-rt-web" {
  vpc_id = aws_vpc.a4l-vpc1.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.a4l-vpc1-igw.id
  }


  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.a4l-vpc1-igw.id
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


resource "aws_route_table" "a4l-vpc1-rt-app-a" {
  vpc_id = aws_vpc.a4l-vpc1.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.a4l-vpc1-natgw-A.id
  }
}


resource "aws_route_table_association" "app-a" {
  subnet_id      = aws_subnet.sn-app-A.id
  route_table_id = aws_route_table.a4l-vpc1-rt-app-a.id
}


resource "aws_route_table" "a4l-vpc1-rt-app-b" {
  vpc_id = aws_vpc.a4l-vpc1.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.a4l-vpc1-natgw-B.id
  }
}


resource "aws_route_table_association" "app-b" {
  subnet_id      = aws_subnet.sn-app-B.id
  route_table_id = aws_route_table.a4l-vpc1-rt-app-b.id
}


resource "aws_route_table" "a4l-vpc1-rt-app-c" {
  vpc_id = aws_vpc.a4l-vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.a4l-vpc1-natgw-C.id
  }
}


resource "aws_route_table_association" "app-c" {
  subnet_id      = aws_subnet.sn-app-C.id
  route_table_id = aws_route_table.a4l-vpc1-rt-app-c.id
}