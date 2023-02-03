
provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAUKGFQUWXWZPG2R52"
    secret_key = "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"
}
resource "aws_subnet" "private_subnet" {
    vpc_id = "vpc-026bc4a7ff08a8997"   // Coustom VPC ID
    availability_zone = "ap-south-1a"
    cidr_block = "10.0.0.0/24"
    tags = {
        Name = "Javeedit-public-sn"
    }
}
resource "aws_subnet" "public_subnet" {
    vpc_id = "vpc-026bc4a7ff08a8997"   // Coustom VPC ID
    availability_zone = "ap-south-1b"
    cidr_block = "10.0.1.0/24"
    tags = {
        Name = "Javeedit-private-sn"
    }
}