resource "aws_instance" "Altschool" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  count         = var.instance_count

  availability_zone = element(var.availability_zones, count.index)

  tags = {
    Name = "${var.name}-${count.index}"
  }
}
