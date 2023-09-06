#public route table 
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

#private route table A
resource "aws_route_table" "a4l-vpc1-rt-az-a" {
  vpc_id = aws_vpc.a4l-vpc1.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.a4l-vpc1-natgw-A.id
  }
}


resource "aws_route_table_association" "app-a" {
  subnet_id      = aws_subnet.sn-app-A.id
  route_table_id = aws_route_table.a4l-vpc1-rt-az-a.id
}


resource "aws_route_table_association" "database-a" {
  subnet_id      = aws_subnet.sn-db-A.id
  route_table_id = aws_route_table.a4l-vpc1-rt-az-a.id
}


resource "aws_route_table_association" "reserved-a" {
  subnet_id      = aws_subnet.sn-reserved-A.id
  route_table_id = aws_route_table.a4l-vpc1-rt-az-a.id
}

#private route table B 
resource "aws_route_table" "a4l-vpc1-rt-az-b" {
  vpc_id = aws_vpc.a4l-vpc1.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.a4l-vpc1-natgw-B.id
  }
}


resource "aws_route_table_association" "app-b" {
  subnet_id      = aws_subnet.sn-app-B.id
  route_table_id = aws_route_table.a4l-vpc1-rt-az-b.id
}


resource "aws_route_table_association" "database-b" {
  subnet_id      = aws_subnet.sn-db-B.id
  route_table_id = aws_route_table.a4l-vpc1-rt-az-b.id
}


resource "aws_route_table_association" "reserved-b" {
  subnet_id      = aws_subnet.sn-reserved-B.id
  route_table_id = aws_route_table.a4l-vpc1-rt-az-b.id
}

#private route table C
resource "aws_route_table" "a4l-vpc1-rt-az-c" {
  vpc_id = aws_vpc.a4l-vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.a4l-vpc1-natgw-C.id
  }
}


resource "aws_route_table_association" "app-c" {
  subnet_id      = aws_subnet.sn-app-C.id
  route_table_id = aws_route_table.a4l-vpc1-rt-az-c.id
}


resource "aws_route_table_association" "database-c" {
  subnet_id      = aws_subnet.sn-db-C.id
  route_table_id = aws_route_table.a4l-vpc1-rt-az-c.id
}


resource "aws_route_table_association" "reserved-c" {
  subnet_id      = aws_subnet.sn-reserved-C.id
  route_table_id = aws_route_table.a4l-vpc1-rt-az-c.id
}