resource "aws_internet_gateway_attachment" "a4l-vpc1-igw" {
  internet_gateway_id = aws_internet_gateway.a4l-vpc1-igw.id
  vpc_id              = aws_vpc.a4l-vpc1.id
}

resource "aws_internet_gateway" "a4l-vpc1-igw" {}