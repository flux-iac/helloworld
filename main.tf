terraform {
  required_version = ">= 0.12.26"
  rerqured_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

resource "random_password" "pwd" {
  length = 12
}

variable "subject" {
   type = string
   default = "World"
   description = "Subject to hello"
}

output "hello_world" {
  value = "Hello branch demo with source change, ${var.subject}!"
}
