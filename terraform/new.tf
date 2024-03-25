resource "aws_instance" "web" {
  ami           = var.aws_ami
  instance_type = var.instance_type
  provider = "aws.us-east-1"

  tags = {
    Name = "web"
  }
}

resource "aws_instance" "dev" {
  ami           = var.aws_ami
  instance_type = var.instance_type
  provider = "aws.ap-south-1b"

  tags = {
    Name = "dev"
  }
}



