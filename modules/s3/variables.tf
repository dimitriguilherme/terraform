#s3-f
variable "name" {
  
}

variable "acl" {
  default = "private"
}

variable "versioning" {
  default = "false"
}

variable "tags" {
  type    = "map"
  default = {}
}