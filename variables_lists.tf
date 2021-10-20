variable "urname" {
  default =  ["Babar" , "Nawaz"]
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
  value= "Welcome Mr. ${var.urname[1]}  ${var.urname[0] } "
}

output "info" {
  value= "You are enrolled in  ${var.courses["cname"]} and Fee is =  ${var.courses["fees"] } "
}
