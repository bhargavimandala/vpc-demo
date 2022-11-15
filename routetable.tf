resource "aws_route_table" "my_routetablepublic" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags = {
    Name = "myroutetablepublic"
  }
}


resource "aws_route_table_association" "public-subnets1" {
    subnet_id      = aws_subnet.public_subnet1.id

    
  route_table_id = aws_route_table.my_routetablepublic.id
  
}

resource "aws_route_table_association" "public-subnets2" {

        subnet_id      = aws_subnet.public_subnet2.id
  
  route_table_id = aws_route_table.my_routetablepublic.id
  
}



resource "aws_route_table" "my_routetableprivate" {
  vpc_id = aws_vpc.my_vpc.id

  route = []

  tags = {
    Name = "myroutetableprivate"
  }
}


resource "aws_route_table_association" "private-subnets1" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.my_routetableprivate.id
}

resource "aws_route_table_association" "private-subnets2" {
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.my_routetableprivate.id
}