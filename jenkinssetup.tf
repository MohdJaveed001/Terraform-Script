provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAUKGFQUWXWZPG2R52"
    secret_key = "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"
}
resource "aws_instance" "jenkinsserver" {
    ami = "ami-06984ea821ac0a879"
    instance_type = "t2.micro"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "JenkinsVM"
    }
}