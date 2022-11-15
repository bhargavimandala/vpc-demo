resource "aws_subnet" "public_subnet1" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "eu-west-2a"

   
  tags = {
    Name = "public_subnet1"
  }
}


resource "aws_subnet" "public_subnet2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "eu-west-2b"

   
  tags = {
    Name = "public_subnet2"
  }
}


resource "aws_subnet" "private_subnet1" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "eu-west-2a"

   
  tags = {
    Name = "private_subnet1"
  }
}



resource "aws_subnet" "private_subnet2" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "eu-west-2c"

   
  tags = {
    Name = "private_subnet2"
  }
}