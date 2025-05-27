resource "aws_instance" "expense" {
  count = length(var.instances)
  # count = 3
  ami                    = var.ami_id # This is our devops-course AMI ID
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  instance_type          = "t3.micro"
  # tags = {
  #   Name = var.instances[count.index]
  # }
  tags = merge(
    var.common_tags,
    {
      Name = var.instances[count.index]
    }
  )
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls_1"
  description = "Allow TLS inbound and all outbound traffic"

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-tls"
  }
}