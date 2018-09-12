variable "instance_type" {
  description = "type of EC2 instance to provision."
  default = "t2.micro"
}

variable "name" {
  description = "Virgil EC2 Test"
  default = "Provisioned by Terraform"
}

variable "aws_region" {}