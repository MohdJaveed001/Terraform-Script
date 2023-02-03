provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAUKGFQUWXWZPG2R52"
    secret_key = "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"
}
resource "aws_internet_gateway" "InternetGW" {
    vpc_id = "vpc-026bc4a7ff08a8997" // Coustom VPC ID
    tags = {
        Name = "Javeedit-IGW"
    }
}
