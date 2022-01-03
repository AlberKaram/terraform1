resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "igw"
  }
}

####route table public
resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }
  tags = {
    Name = "public_rt"
  }
}

### public subnets association 

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.first-az-public-subnet.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.second-az-public-subnet.id
  route_table_id = aws_route_table.public-rt.id
}