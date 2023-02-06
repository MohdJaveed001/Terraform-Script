provider "aws" {
    region = "ap-south-1"
    access_key = "Your Access Key"
    secret_key = "Your Secret Key"
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