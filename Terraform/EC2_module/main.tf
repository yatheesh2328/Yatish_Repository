resource "aws_instance" "EC2instance" {
    ami = var.ami
    instance_type = var.instance_type
  
}
