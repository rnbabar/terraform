variable "uname" {
  default =  []"Babar" , "Nawaz"]
}

variable  "courses"{
    default = {
        cname= "DevOps",
        cduration=3,
        is-active=true,
        fees=300

    }
}

output "greetings" {
  value= "Welcome Mr. ${var.uname[1]}  ${var.uname[0] } "
}

output "info" {
  value= "You are enrolled in  ${var.courses["cname"]} and Fee is =  ${var.uname["fees"] } "
}
