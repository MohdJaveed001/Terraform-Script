provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAUKGFQUWXWZPG2R52"
    secret_key = "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"
}
resource "aws_vpc" "vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {    
        Name = "Javeedit-vpc"
    }
}
resource "aws_subnet" "private_subnet" {
    vpc_id = "Javeedit-vpc"
    availability_zone = "ap-south-1a"
    cidr_block = "10.0.0.0/24"
    tags = {
        Name = "Javeedit-public-sn"
    }
}
resource "aws_subnet" "public_subnet" {
    vpc_id = "Javeedit-vpc"
    availability_zone = "ap-south-1b"
    cidr_block = "10.0.1.0/24"
    tags = {
        Name = "Javeedit-private-sn"
    }
}
resource "aws_internet_gateway" "InternetGW" {
    vpc_id = "Javeedit-vpc"
    tags = {
        Name = "Javeedit-IGW"
    }
}
resource "aws_route_table" "Second_rt" {
    vpc_id = "Javeedit-vpc"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "Javeedit-IGW"
    }
    tags = {
        Name = "Javeedit_Public_RT"
    }
}
resource "aws_route_table_association" "public-sn-association" {
    subnet_id = "Javeedit-private-sn"
    route_table_id = "Javeedit_Public_RT"
}