resource "aws_instance" "my_vpc_ec2" {
  ami           = "ami-0648ea225c13e0729"
  instance_type = "t2.micro"
  key_name = "myaws"
  

  tags = {
    Name = "HelloWorld"
  }
}