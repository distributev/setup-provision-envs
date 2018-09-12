provider "aws" {
  version = "~> 1.35"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region = "${var.aws_region}"
}

module "ec2" {
  source              = "./ec2"
  aws_region          = "${var.aws_region}"
}