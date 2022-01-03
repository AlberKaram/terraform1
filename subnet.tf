##### at first AZ
resource "aws_subnet" "first-az-public-subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "first-az-public-subnet-1"
  }
}

resource "aws_subnet" "first-az-private-subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "first-az-private-subnet-1"
  }
}


resource "aws_subnet" "first-az-private-subnet-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    Name = "first-az-private-subnet-2"
  }
}

##### at second AZ

resource "aws_subnet" "second-az-public-subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name = "second-az-public-subnet-1"
  }
}

resource "aws_subnet" "second-az-private-subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name = "second-az-private-subnet-1"
  }
}

resource "aws_subnet" "second-az-private-subnet-2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.6.0/24"
  availability_zone = "eu-west-1b"

  tags = {
    Name = "second-az-private-subnet-2"
  }
}