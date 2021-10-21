provider "aws" {
    region = "us-east-1"
  
}
resource "aws_instance" "carts" {
    ami = "ami-074df373d6bafa625"
    instance_type = "t2.micro"
    
}

output "public_ip" {
    value = aws_instance.carts.public_ip
}
