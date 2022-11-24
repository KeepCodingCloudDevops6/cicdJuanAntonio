resource "aws_s3_bucket" "acme-storage-JuanAntonio" {
  bucket = "acme-storage-JuanAntonio"
}

resource "aws_s3_bucket_acl" "bucket-acl-JuanAntonio" {
  bucket = "acme-storage-JuanAntonio"
  acl    = "private"
}
