provider "aws" {
    region = "us-east-1"
 
}

module "ec2" {
    source="./module1"
}

module "s3"{
    source="./module1"
}
