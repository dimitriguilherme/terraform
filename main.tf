provider "aws" {
  region                  = "${var.region}"
  #shared_credentials_file = ".aws/credentials"
  shared_credentials_file = "${var.cred}"
  profile                 = "${var.prof}"
}

resource "aws_instance" "web" {
  ami = "ami-00068cd7555f543d5"
  instance_type = "t2.micro"
}
