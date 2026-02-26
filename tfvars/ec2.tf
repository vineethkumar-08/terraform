resource "aws_instance" "example" {
  ami = "ami-0220d79f3f480ecf5"
  instance_type = var.instance_type
  
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags= {
  Name = "Terraform-tfvar-demo-${var.environment}" 
  Project = "roboshop"
}

}

resource "aws_security_group" "allow_tls" { 
  name        = "allow_all_terraform${var.environment}" # this is for aws
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
    Name = "terraform-tfvar-${var.environment}"
  }
}