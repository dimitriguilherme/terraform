provider "aws" {
  region                  = "${var.region}"
  #shared_credentials_file = ".aws/credentials"
  shared_credentials_file = "${var.cred}"
  profile                 = "terra"
}


