variable "ami-id" {
    type = string
    description = "This is mny AMI-ID"
  
}
variable "instance-type" {
    type = string
    description = "This is the default instance"
    default = "t2.micro"
}

variable "Tags" {
    type = map(any)
    description = "These are the necessary tags to apply."
}

variable "Instance_names" {
    type = list(any)
    description = "This is the count loop variable."
}


variable "var-foreach" {
    type = map(any)
    description = "This is the ForEachLoop variable."
}