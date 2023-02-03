provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAUKGFQUWXWZPG2R52"
    secret_key = "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"
}
resource "aws_instance" "MyAWSVM1" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "MavenVM"
    }
}
resource "aws_instance" "MyAWSVM2" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "TomcatServerVM"
    }
}
resource "aws_instance" "MyAWSVM3" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "SonarQubeVM"
    }
}
resource "aws_instance" "MyAWSVM4" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "NexusRepoVM"
    }
}
resource "aws_instance" "MyAWSVM5" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "JenkinsVM"
    }
}
resource "aws_instance" "MyAWSVM6" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "DockerVM"
    }
}
resource "aws_instance" "MyAWSVM7" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "EKSClientVM"
    }
}