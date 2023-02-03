provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAUKGFQUWXWZPG2R52"
    secret_key = "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"
}
resource "aws_instance" "AWS_Server" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "EC2-VM"
    }
}