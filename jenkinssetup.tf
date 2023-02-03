provider "aws" {
    region = "ap-south-1"
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