provider "aws" {
    region = "us-east-1"
 
}
resource "aws_instance" "carts" {
    count = 2
    ami = "ami-0e4e4b2f188e91845"
    instance_type = "t2.micro"
    tags = {
        Name = "Catalogue"
    }
    
}

module "s3" {
  source = "./module1"
}