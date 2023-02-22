

ami-id = "ami-0e472ba40eb589f49"

Tags = {
  Owner="rudra.singh@cloudeq.com"
  Purpose="training"
}


Instance_names = [ "rudra" ,"diwash","rishu" ]

var-foreach = {
  "instance-1" = {
    "Name"="rudra"
    "Owner"="rudra.singh@cloudeq.com"
    "Purpose"="training"
  }

  "instance-2" = {
    "Name"="diwash"
    "Owner"="rudra.singh@cloudeq.com"
    "Purpose"="training"
  }
  
  "instance-3" = {
    "Name"="rishu"
    "Owner"="rudra.singh@cloudeq.com"
    "Purpose"="training"
  }

   "instance-4" = {
    "Name"="ram"
    "Owner"="rudra.singh@cloudeq.com"
    "Purpose"="training"
  }
}