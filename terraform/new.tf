resource "aws_instance" "dev" {
  ami           = var.aws_ami
  instance_type = var.instance_type
  provider = ["aws.ap-south-1"]
  tags = {
    Name = "dev"
  }
}



