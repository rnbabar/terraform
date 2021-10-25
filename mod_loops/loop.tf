provider "aws" {
    region = "us-east-1"
 
}
resource "aws_instance" "carts" {
    count = 2
    ami = "ami-0e4e4b2f188e91845"
    instance_type = "t2.micro"
    tags = {
        Name = var.iname[count.index]
    }
    
}


output "public_ip" {
    value = aws_instance.carts.*.public_ip
}

variable "iname" {
  default = ["frontend", "cart"]
}