provider "aws" {
    region = "us-east-1"
 
}
resource "aws_instance" "carts" {
    ami = "ami-0e4e4b2f188e91845"
    instance_type = "t2.micro"
    
}

output "public_ip" {
    value = aws_instance.carts.public_ip
}
