provider "aws" {
    region = "ap-south-1"
    access_key = "Your Access Key"
    secret_key = "Your Secret Key"
}
resource "aws_internet_gateway" "InternetGW" {
    vpc_id = "vpc-026bc4a7ff08a8997" // Coustom VPC ID
    tags = {
        Name = "Javeedit-IGW"
    }
}
