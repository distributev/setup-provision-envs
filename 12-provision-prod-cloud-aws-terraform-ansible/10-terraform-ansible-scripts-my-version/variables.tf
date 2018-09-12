variable "aws_access_key" {
  default = ""
  description = "AWS key. Set it in secrets.auto.tfvars"
}
variable "aws_secret_key" {
  default = ""
  description = "AWS secret. Set it in secrets.auto.tfvars"
}

variable "aws_region" {
  default = "eu-west-1"
  description = "AWS region"
}