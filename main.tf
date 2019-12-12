#aws provider
provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = ".aws/credentials"
  profile                 = "terra"
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket1"
  acl    = "private"

  tags = {
    Name        = "My bucket1"
    Environment = "Dev1"
  }
}

#interpolacao_t
resource "aws_s3_bucket_object" "object" {
  bucket = "${aws_s3_bucket.b.id}"
  key    = "arquivoS3.txt"
  source = "arquivo.txt"
}

#others

