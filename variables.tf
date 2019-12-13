variable "region" {
  default = "us-east-1"
  description = "principal"
}

variable "cred" {
  default = ".aws/credentials"
}

variable "prof" {
  default = "terra"
}

#  ami = "${var.ami}"
variable "ami"  {
    default = "ami-00068cd7555f543d5"
}


#➜  terraform git:(master) ✗ terraform plan -var-file=""dev.tfvars""
variable "type" {
  default = "t2.micro"
}

#var. tipo lista
variable "ips" {
  type = "list"
  default = ["3ffe:1900:4545:3:200:f8ff:fe21:67cf", 
  "3ffe:1900:4545:3:200:f8ff:fe21:67cd"]
}

#var. tipo mapa
variable "tags" {
  type = "map"
  default = {
      "Name" = "Node.js"
      "Env" = "Dev"
  }
}
