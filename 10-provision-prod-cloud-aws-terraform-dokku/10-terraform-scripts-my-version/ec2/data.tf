data "aws_ami" "most_recent_ubuntu_16" {
  most_recent = true

  filter {
    name   = "name"
    values = ["*ubuntu-xenial*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  owners = ["099720109477"] # Ubuntu
}
