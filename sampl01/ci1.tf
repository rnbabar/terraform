resource "aws_instance" "cart" {
    ami = "ami-074df373d6bafa625"
    instance_type = "t2.micro"
    
}

output "public_ip" {
    value = aws_instance.cart.public_ip
}
