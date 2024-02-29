    provider "aws" {
      region = "ca-central-1"
    }

    resource "aws_security_group" "allow_SSG" {
      name = "allow_SSG"
      description = "allow_SSG"

      ingress {
        from_port = 9000
        to_port = 9000
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

      ingress {
        from_port = 8080
        to_port = 8080
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

      ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
      }

      egress {
        from_port = 0
        to_port = 0
        protocol ="-1"
        cidr_blocks = ["0.0.0.0/0"]
      }
    }
    resource "aws_instance" "instanceA" {
      ami = "ami-0a2e7efb4257c0907"
      instance_type = "t3.medium"
      security_groups = [ aws_security_group.allow_SSG.name ]
      user_data = file("sonarqube.sh")
      tags = {
      name = "SonarqubeInstance"
    }

    }
    output "public_ip" {
      value = aws_instance.instanceA.public_ip
    }  

