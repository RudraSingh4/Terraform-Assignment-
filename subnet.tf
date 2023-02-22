

# Creating two Subnets
resource "aws_subnet" "rudra-subnet-1" {
  vpc_id                  = aws_vpc.rudra-vpc.id
  cidr_block              = "172.16.0.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  tags = {
    Name    = "rudra-subnet-1"
    Owner   = "rudra.singh@cloudeq.com"
    Purpose = "training"
  }
}


resource "aws_subnet" "rudra-subnet-2" {
  vpc_id                  = aws_vpc.rudra-vpc.id
  cidr_block              = "172.16.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  tags = {
    Name    = "rudra-subnet-2"
    Owner   = "rudra.singh@cloudeq.com"
    Purpose = "training"
  }
}