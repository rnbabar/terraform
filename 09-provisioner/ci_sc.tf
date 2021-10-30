provider "aws" {
    region = "us-east-1"
 
}
resource "aws_instance" "carts" {
    ami = "ami-0e4e4b2f188e91845"
    instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]

       
}

resource "null_resource" "remote" {
  count=1
  provisioner  "remote-exec" {
      connection {
        user = "centos"
        password= "DevOps321"
        host= element(aws_instance.carts.*.public_ip,count.index)

      }
      
      inline = [
        "uptime"
      ]
    
    }
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  

  ingress = [
    {
      description      = "TLS from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      self             = false
      prefix_list_ids  = []
      security_groups  = []

    }
  ]

  egress = [
    {
      description      = "All"
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = []
      self             = false
      prefix_list_ids  = []
      security_groups  = []
    }
  ]

 
}