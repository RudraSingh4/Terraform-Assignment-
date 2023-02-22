
#---------------------------------------------------------------------------------------------------------
# This is my Route
resource "aws_route_table" "rudra-route" {
  vpc_id = aws_vpc.rudra-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.rudra-gateway.id
  }

  tags = {
    Name    = "rudra-route"
    Owner   = "rudra.singh@cloudeq.com"
    Purpose = "training"
  }
}
