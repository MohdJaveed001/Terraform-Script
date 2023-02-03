provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAUKGFQUWXWZPG2R52"
    secret_key = "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"
}
resource "aws_route_table_association" "public-sn-association" {
    subnet_id = "subnet-057508f8694f8187c"  //Public SN
    route_table_id = "rtb-02720819bbb9ba42a"  //Public Route Table Id
}