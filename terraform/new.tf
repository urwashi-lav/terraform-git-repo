resource "aws_instance" "dev" {
  ami           = var.aws_ami
  instance_type = var.instance_type

  tags = {
    Name = "dev"
  }
}



