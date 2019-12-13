provider "aws" {
  region                  = "${var.region}"
  #shared_credentials_file = ".aws/credentials"
  shared_credentials_file = "${var.cred}"
  profile                 = "${var.prof}"
}

resource "aws_instance" "web" {
  ami = "${var.ami}"
  instance_type = "${var.type}"
  ipv6_addresses = "${var.ips}"
  tags = "${var.tags}"
}




