# creating an EC2 instance in differnce ways
/* 1. By using normal resource block
   2. By setting up a custom startup script for EC2 by using user-data attribute
   3. By using the script.sh from the local machine to remote EC2 using file and remote-exec provisioner
*/

provider "aws" {
  region = "ap-south-1"
}

# 1st Method: Normal resource block
resource "aws_instance" "firstEC2" {
  ami           = "ami-03bb6d83c60fc5f7c"
  instance_type = "t2.micro"
}

# 2nd Method: Custom startup script with user-data
resource "aws_instance" "secondEC2" {
  ami           = "ami-03bb6d83c60fc5f7c"
  instance_type = "t2.micro"
  
  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt install -y apache2
    sudo systemctl start apache2
    sudo chown ubuntu:ubuntu /var/www/html
    echo "<html><body><h1>Hello, this custom page was built with Terraform User Data</h1></body></html>" > /var/www/html/index.html
  EOF
}

# 3rd Method: Using local script with file and remote-exec provisioner
resource "aws_instance" "thirdEC2" {
  ami           = "ami-03bb6d83c60fc5f7c"
  instance_type = "t2.micro"

  # Note: The connection block and provisioners must be inside the resource block
  connection {
    type     = "ssh"
    host     = self.public_ip
    user     = "ubuntu"
    timeout  = "4m"
    private_key = file("<path-to-your-private-key>") # You need to specify your private key here
  }

  provisioner "file" {
    source      = "<local-path-to-your-script>" # Specify the local path to your script
    destination = "/home/ubuntu/startup.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/ubuntu/startup.sh",
      "/home/ubuntu/startup.sh"
    ]
  }
}
