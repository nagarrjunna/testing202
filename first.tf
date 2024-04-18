#vpc+subnet+vm
provider "aws" {
  region = "ap-south-1"
  profile = "default"
  
}
#vpc creation
resource "aws_vpc" "myvpc" {
    cidr_block = var.myvpccidr
    tags = {
      Name = "testingvpc"
    }
  
}
#subnect creation
resource "aws_subnet" "name" {
  cidr_block = var.mysubnetcidr
  vpc_id = aws_vpc.myvpc.id
  depends_on = [ aws_vpc.myvpc ]
  availability_zone = "ap-south-1b"
}

resource "aws_instance" "myvm" {
    ami = var.myami
    instance_type = var.myinstancetype
    subnet_id = aws_subnet.name.id 
    tags = {
      Name = "myvm01"
    }
  
}
