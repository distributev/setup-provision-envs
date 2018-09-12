resource "aws_instance" "ubuntu_16" {
  ami           = "${data.aws_ami.most_recent_ubuntu_16.id}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.aws_region}a"

  tags {
    Name = "${var.name}"
  }
}