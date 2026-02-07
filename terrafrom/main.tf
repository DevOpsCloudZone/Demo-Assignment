resource "aws_security_group" "app_sg" {
  name        = "app-security-group"
  description = "Allow SSH and App Port"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "app_server" {
  ami           = "ami-019715e0d74f695be"
  instance_type = "t3.micro"
  key_name      = "sample"

  vpc_security_group_ids = [aws_security_group.app_sg.id]

  tags = {
    Name = "DevOps-App-Server"
  }
}

output "public_ip" {
  value = aws_instance.app_server.public_ip
}
