provider "aws" {
  region = "ap-south-1"
  access_key = ""
  secret_key = ""
}
resource "aws_vpc" "jenkins-setup-vpc" {
  #count = 2
  cidr_block = "10.0.0.0/24"
  tags = {
    Name = "jenkins-setup-vpc-practice"
  }
  
}
resource "aws_internet_gateway" "jenkins-setup-igw" {
  vpc_id = aws_vpc.jenkins-setup-vpc.id

  tags = {
    Name = "jenkins-setup-igw-practice"
  }
}

resource "aws_subnet" "jenkins-setup-subnet" {
  vpc_id            = aws_vpc.jenkins-setup-vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "jenkins-setup-subnet-practice"
  }
}
resource "aws_security_group" "jenkins-setup-sg" {
  name        = "jenkins-setup-sg"
  vpc_id      = aws_vpc.jenkins-setup-vpc.id
 # map_public_ip_on_launch = true
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
resource "aws_route_table" "jenkins-setup-public-rt" {
  vpc_id = aws_vpc.jenkins-setup-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.jenkins-setup-igw.id
  }

  tags = {
    Name = "jenkins-setup-public-rt"
  }
}
resource "aws_route_table_association" "jenkins-setup-rt-practice" {
  subnet_id      = aws_subnet.jenkins-setup-subnet.id
  route_table_id = aws_route_table.jenkins-setup-public-rt.id
}
resource "aws_instance" "jenkins-setup-vm" {
  ami = "ami-00bb6a80f01f03502"
  instance_type = "t2.micro"
  subnet_id         = aws_subnet.jenkins-setup-subnet.id
  vpc_security_group_ids = [aws_security_group.jenkins-setup-sg.id]
  associate_public_ip_address = true
  key_name = "practice"
  root_block_device {
    volume_size = 20
    volume_type = "gp2"
  }
  tags = {
    Name = "jenkins-setup-vm"
  }
}
