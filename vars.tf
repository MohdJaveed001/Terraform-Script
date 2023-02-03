variable "ami" {
    description = "Amazon Virtual Mechine Image"
    default = "ami-0cca134ec43cf708f"
}
variable "Instances_count" {
    description = "Instances count"
    default = "5"
}
variable "instance_type" {
    description = "Type of the instance"
    default = "t2.micro"
}
