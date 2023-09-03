resource "aws_internet_gateway" "a4l-vpc1-igw" {
  vpc_id              = aws_vpc.a4l-vpc1.id
}