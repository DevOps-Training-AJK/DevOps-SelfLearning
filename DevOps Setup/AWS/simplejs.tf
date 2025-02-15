provider "aws" {
  region = "ap-south-1"
  #access_key = "<access key>"
  #secret_key = "<secret key>"
}
resource "aws_vpc" "samplejs-vpc" {
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "samplejs-vpc-practice"
  }
  
}
resource "aws_internet_gateway" "samplejs-igw" {
  vpc_id = aws_vpc.samplejs-vpc.id

  tags = {
    Name = "samplejs-igw-practice"
  }
}

resource "aws_subnet" "samplejs-subnet" {
  vpc_id            = aws_vpc.samplejs-vpc.id
  cidr_block        = "10.0.1.0/30"
  availability_zone = "ap-south-1a"  # Change this to your preferred AZ

  tags = {
    Name = "samplejs-subnet-practice"
  }
}
resource "aws_security_group" "samplejs-sg" {
  name        = "samplejs-sg"
  vpc_id      = aws_vpc.samplejs-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "sample-js-sg"
  }
}
resource "aws_instance" "samplejs-vm" {
  ami = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  subnet_id         = aws_subnet.samplejs-subnet.id
  vpc_security_group_ids = [aws_security_group.samplejs-sg.id]
  associate_public_ip_address = true
  key_name = "samplejs-key"
  root_block_device {
    volume_size = 20
    volume_type = "gp2"
  }
  tags = {
    Name = "samplejs-vm"
  }

}
