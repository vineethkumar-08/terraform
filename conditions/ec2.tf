resource "aws_instance" "example" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
  
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags= {
  Name = "Terraform" 
  Project = "roboshop"
}

}

resource "aws_security_group" "allow_tls" { 
  name        = "allow_all_terraform" # this is for aws
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }



  tags = {
    Name = "allow_all_terraform"
  }
}