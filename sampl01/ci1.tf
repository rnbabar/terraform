provider "aws" {
    region = "us-east-1"
  
}
resource "aws_instance" "carts" {
    ami = "ami-052ed334670027b3"
    instance_type = "t2.micro"
    
}

output "public_ip" {
    value = aws_instance.carts.public_ip
}
