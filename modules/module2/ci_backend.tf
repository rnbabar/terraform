terraform {
  backend "s3" {
    bucket = "rnbabar-store"
    key    = "sampl03/terraform.tfstate"
    region = "us-east-1"
  }
}