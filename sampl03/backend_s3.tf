provider "aws" {
    region = "us-east-1"
 
}
resource "aws_instance" "carts" {
    ami = "ami-0e4e4b2f188e91845"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]
    
}

terraform {
  backend "s3" {
    bucket = "rnbabar-store"
    key    = "sampl03/terraform.tfstate"
    region = "us-east-1"
  }
}