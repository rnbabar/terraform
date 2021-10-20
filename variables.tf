variable "uname" {
  default =  "Babar"
}

output "greeting1"{
    value= var.uname
}

output "greeting2" {
  value= "${var.uname} Welcome"
}