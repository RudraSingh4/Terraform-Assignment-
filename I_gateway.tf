#Creating internet Gateway
resource "aws_internet_gateway" "rudra-gateway" {
  vpc_id = aws_vpc.rudra-vpc.id
  tags = {
    Name    = "rudra-subnet"
    Owner   = "rudra.singh@cloudeq.com"
    Purpose = "training"
  }
}


#for subnet-1
resource "aws_route_table_association" "rudra-crta-public-subnet-1" {
  subnet_id      = aws_subnet.rudra-subnet-1.id
  route_table_id = aws_route_table.rudra-route.id
}

#for subnet-2
resource "aws_route_table_association" "rudra-crta-public-subnet-2" {
  subnet_id      = aws_subnet.rudra-subnet-2.id
  route_table_id = aws_route_table.rudra-route.id
}



#----------------------------------------------------------------------------------------------
# Creating aws Security Group
resource "aws_security_group" "rudra-security" {
  vpc_id = aws_vpc.rudra-vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name    = "rudra-security"
    Owner   = "rudra.singh@cloudeq.com"
    Purpose = "training"
  }
}