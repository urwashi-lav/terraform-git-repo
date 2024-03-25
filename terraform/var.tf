variable "aws_ami" {
  description = "ami of instance"
   type = string
   default = "ami-03f4878755434977f"
 }
variable "instance_type" {
  description = "type of instance"
   type = string
   default = "t2.micro"
 }

# Define an output variable to expose the public IP address of the EC2 instance
output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.dev_instance.public_ip
}

