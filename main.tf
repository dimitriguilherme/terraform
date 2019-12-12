#aws provider
provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = ".aws/credentials"
  profile                 = "terra"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket129vc"
  acl    = "private"

  tags = {
    Name        = "My bucket12344"
    Environment = "Dev444"
  }
}

#interpolacao
resource "aws_s3_bucket_object" "object" {
  bucket = "${aws_s3_bucket.b.id}"
  key    = "oioioi.txt"
  source = "arquivo.txt"
}
