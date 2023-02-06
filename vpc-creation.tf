provider "aws" {
    region = "ap-south-1"
    access_key = "Your Access Key"
    secret_key = "Your Secret Key"
}
resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {    
        Name = "Javeedit-vpc"
    }
}
