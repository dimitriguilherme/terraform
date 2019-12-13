#m-f
provider "aws" {
  region                  = "${var.region}"
  #shared_credentials_file = ".aws/credentials"
  shared_credentials_file = "${var.cred}"
  profile                 = "${var.prof}"
}

resource "random_id" "bucket" {
  byte_length =8
}

module "bucket" {
  source = "./s3"
  name = "mybucket-${random_id.bucket.hex}"
}



