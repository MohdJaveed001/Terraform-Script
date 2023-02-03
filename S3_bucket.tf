provider "aws" {
    region = "ap-south-1"
}
resource "aws_s3_bucket" "myS3Bucket" {
    bucket = "javeedits3"
    acl = "private"
    versioning {
        enabled = true
    }
}