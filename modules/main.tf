#module-f
provider "aws" {
  region                  = "${var.region}"
  #shared_credentials_file = ".aws/credentials"
  shared_credentials_file = "${var.cred}"
  profile                 = "${var.prof}"
}


resource "random_id" "bucket" {
  byte_length = 8
}

resource "random_id" "bucket_2" {
  byte_length = 4
}

module "bucket" {
  source = "./s3"

  name       = "my-bucket-${random_id.bucket.hex}"
  versioning = true

  tags = {
    "Name" = "Meu bucket de anotações"
  }

  create_object = true
  object_key    = "files/${random_id.bucket.dec}.txt"
  object_source = "file.txt"
}

module "bucket-2" {
  source = "./s3"

  name = "my-bucket-${random_id.bucket_2.hex}"
}