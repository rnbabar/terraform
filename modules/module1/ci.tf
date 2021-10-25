resource "aws_instance" "carts" {
    ami = "ami-0e4e4b2f188e91845"
    instance_type = "t2.micro"
    tags = {
        Name= "cart"
    }
    
} 