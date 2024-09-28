//here we created two resources i.e security group and ec2
resource "aws_security_group" "allow_tf_28sept" {   // first resource
  name        = "allow_tf_28sept"
  description = "Allow Tf-28sept inbound traffic"

  ingress {                        // incoming traffic -- while netering into office we have to swipe the card(authintication) required
    description = "TLS from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {                  // outgoing traffic  -- while leaving office authentication is not required, so we make from_port and to_port is 0
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}


resource "aws_instance" "terraform"{  // created second resource

    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_tf_28sept.id]
    tags = {
        Name = "tf_28sept"
    }
}