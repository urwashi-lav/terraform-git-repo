resource "aws_vpc" "ter-vpc" {
  cidr_block = "172.0.0.0/16"
 instance_tenancy = "default"

  tags = {
    Name = "ter-vpc"
 }
}
resource "aws_subnet" "pub" {
  vpc_id     = aws_vpc.ter-vpc.id
  cidr_block = "172.0.1.0/24"
  tags = {
    Name = "pub"
  }
}
resource "aws_subnet" "pri" {
  vpc_id     = aws_vpc.ter-vpc.id
  cidr_block = "172.0.2.0/24"

  tags = {
    Name = "pri"
  }
}
resource "aws_internet_gateway" "internetgw" {
  vpc_id = aws_vpc.ter-vpc.id

  tags = {
    Name = "internetgw"
  }
}
resource "aws_egress_only_internet_gateway" "hello" {
  vpc_id = aws_vpc.ter-vpc.id
}

resource "aws_route_table" "pub-rt" {
vpc_id = aws_vpc.ter-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internetgw.id
  }

  route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = aws_egress_only_internet_gateway.hello.id
  }

  tags = {
    Name = "pub-rt"
  }
}
resource "aws_route_table_association" "route-ass" {
  subnet_id      = aws_subnet.pub.id
  route_table_id = aws_route_table.pub-rt.id
}

