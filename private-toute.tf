#### route table private 

resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "privte-rt"
  }
}


### nat-private subnets association 

resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.first-az-private-subnet-2.id
  route_table_id = aws_route_table.main.id
}

resource "aws_route_table_association" "private2" {
  subnet_id      = aws_subnet.second-az-private-subnet-2.id
  route_table_id = aws_route_table.main.id
}