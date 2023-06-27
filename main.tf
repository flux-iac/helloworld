terraform {
  required_version = ">= 0.12.26"
}

variable "secret_subject" {
    type = string
    sensitive = true
    description = "Secret subject"
}

variable "subject" {
   type = string
   description = "Subject to hello"
}

output "hello_world" {
  sensitive = true
  value = "Hello, ${var.subject}! (secret: ${var.secret_subject})"
}
