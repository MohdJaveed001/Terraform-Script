provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAUKGFQUWXWZPG2R52"
    secret_key = "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"
}
resource "aws_route_table" "Second_rt" {
    vpc_id = "vpc-026bc4a7ff08a8997"   // Coustom VPC ID
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "igw-08884e5f9b4fb7c05"  // Coustom Internet Gateway ID
    }
    tags = {
        Name = "Javeedit_Public_RT"
    }
}
