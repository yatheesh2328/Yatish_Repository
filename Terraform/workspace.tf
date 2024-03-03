provider "aws" {
  region = "eu-west-3"
}

terraform {
  backend "s3" {
    bucket         = "bucket-yatish"
    key            = "terraform.tfstate"
    region         = "eu-west-3"
    encrypt        = true
  }
}

locals {
  env = terraform.workspace

  count = {
    dev     = 1
    prod    = 1
    UA_test = 1
  }

  size = {
    dev     = 10
    prod    = 40
    UA_test = 20
  }

  instance_type = {
    dev     = "t2.micro"
    prod    = "t2.small"
    UA_test = "t2.medium"
  }

  tags = {
    dev     = "devinstance"
    prod    = "prodinstance"
    UA_test = "UATinstance"
  }
}

resource "aws_instance" "devEC2" {
  count            = local.count[local.env]
  ami              = "ami-01b32e912c60acdfa"
  instance_type    = local.instance_type[local.env]
  availability_zone = "eu-west-3a"
  tags = {
    Name = local.tags[local.env]
  }
}

resource "aws_ebs_volume" "storage" {
  count = local.count[local.env]
  availability_zone = "eu-west-3a"
  size              = local.size[local.env]
  tags = {
    Name = local.tags[local.env]
  }
}

resource "aws_volume_attachment" "trail" {
  count       = local.count[local.env]
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.storage[count.index].id
  instance_id = aws_instance.devEC2[count.index].id
}

resource "aws_eip" "demo" {
  count    = local.count[local.env]
  instance = aws_instance.devEC2[count.index].id
}
