

#Creating two EC-2 instance in first subnet

resource "aws_instance" "rudra-ec2-1" {
  ami                    = "ami-0e742cca61fb65051"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.rudra-security.id}"]
  subnet_id              = aws_subnet.rudra-subnet-1.id

  key_name                    = "Rudra-kp"
  count                       = 2
  associate_public_ip_address = true
  tags = {
    Name    = "rudra-ec2-1"
    Owner   = "rudra.singh@cloudeq.com"
    Purpose = "training"
  }

  volume_tags = {
    Name    = "rudra-ec2-1"
    Owner   = "rudra.singh@cloudeq.com"
    Purpose = "training"
  }
}

# ----------------------------------------------------------

#Creating two EC-2 instance in second subnet

resource "aws_instance" "rudra-ec2-2" {
  ami                    = "ami-0e742cca61fb65051"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.rudra-security.id}"]
  subnet_id              = aws_subnet.rudra-subnet-2.id

  key_name                    = "Rudra-kp"
  count                       = 2
  associate_public_ip_address = true
  tags = {
    Name    = "rudra-ec2-2"
    Owner   = "rudra.singh@cloudeq.com"
    Purpose = "training"
  }

  volume_tags = {
    Name    = "rudra-ec2-2"
    Owner   = "rudra.singh@cloudeq.com"
    Purpose = "training"
  }
}