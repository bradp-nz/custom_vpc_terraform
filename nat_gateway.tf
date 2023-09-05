resource "aws_nat_gateway" "a4l-vpc1-natgw-A" {
  allocation_id = aws_eip.nat_eip_A.id
  subnet_id     = aws_subnet.sn-web-A.id
  depends_on    = [aws_internet_gateway.a4l-vpc1-igw]
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  tags = {
    Name = "a4l-vpc1-natgw-A"
  }
}


resource "aws_eip" "nat_eip_A" {


  tags = {
    Name = "nat_eip_A"
  }
}


resource "aws_nat_gateway" "a4l-vpc1-natgw-B" {
  allocation_id = aws_eip.nat_eip_B.id
  subnet_id     = aws_subnet.sn-web-B.id
  depends_on    = [aws_internet_gateway.a4l-vpc1-igw]


  tags = {
    Name = "a4l-vpc1-natgw-B"
  }
}


resource "aws_eip" "nat_eip_B" {


  tags = {
    Name = "nat_eip_B"
  }
}

resource "aws_nat_gateway" "a4l-vpc1-natgw-C" {
  allocation_id = aws_eip.nat_eip_C.id
  subnet_id     = aws_subnet.sn-web-C.id
  depends_on    = [aws_internet_gateway.a4l-vpc1-igw]


  tags = {
    Name = "a4l-vpc1-natgw-C"
  }
}


resource "aws_eip" "nat_eip_C" {


  tags = {
    Name = "nat_eip_C"
  }
} 