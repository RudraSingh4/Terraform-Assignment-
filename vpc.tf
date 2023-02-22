# Creating One Vpc
resource "aws_vpc" "rudra-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
    enable_dns_support = "true"  #gives you an internal domain name
    enable_dns_hostnames = "true"  #gives you an internal host name

  tags = {
    Name    = "rudra-vpc"
    Owner   = "rudra.singh@cloudeq.com"
    Purpose = "training"
  }
}