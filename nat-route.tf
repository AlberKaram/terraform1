### elastic ip
resource "aws_eip" "main" {
  vpc      = true
}

### nat gateway

resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.main.id
  subnet_id     = aws_subnet.first-az-public-subnet.id

  tags = {
    Name = "NAT gw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.main]
}


#### route table private with nat
resource "aws_route_table" "private-nat-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.main.id
  }
  tags = {
    Name = "private_nat_rt"
  }
}



### nat-private subnets association 

resource "aws_route_table_association" "private-nat-1" {
  subnet_id      = aws_subnet.first-az-private-subnet.id
  route_table_id = aws_route_table.private-nat-rt.id
}

resource "aws_route_table_association" "private-nat-2" {
  subnet_id      = aws_subnet.second-az-private-subnet.id
  route_table_id = aws_route_table.private-nat-rt.id
}