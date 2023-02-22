

# FOR EACH
resource "aws_instance" "ec2_instance" {
    for_each = var.var-foreach
    ami    = var.ami-id
    instance_type = var.instance-type
    tags = {
      "Name" = each.value["Name"]
      "Owner"=each.value["Owner"]
      "Purpose"=each.value["Purpose"]
    }
    volume_tags = {
    Name ="rudra"
    Owner ="rudra.singh@cloudeq.com"
    Purpose = "training"
  "availability_zone" = "us-east-1"
  size= 40
}
}