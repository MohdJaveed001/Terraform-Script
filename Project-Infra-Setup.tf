provider "aws" {
    region = "ap-south-1"
}
resource "aws_instance" "tomcatserver" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "TomcatServer-VM"
    }
}
resource "aws_instance" "sonarserver" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.medium"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "Sonar-VM"
    }
}
resource "aws_instance" "nexusserver" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.medium"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "Nexus-VM"
    }
}
resource "aws_instance" "jenkinsserver" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "JenkinsVM"
    }
}
resource "aws_instance" "dockerserver" {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    key_name = "Linux"
    security_groups = ["JaveedIT-SG"]
    tags = {
        Name = "Docker-VM"
    }
}