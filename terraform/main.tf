provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "jenkins" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.medium"
  key_name      = "devops-key"

  tags = {
    Name = "Jenkins-Server"
  }
}

