provider "aws" {
  region = "ap-south-1"
}
resource "aws_iam_user" "usercreation" {
  name = "jenkinsuser"
}
resource "aws_iam_access_key" "jenkinsuseraccesskey" {
    user = "jankinsuser"
    access_key_name = "jenkinsuseraccesskey"
}
