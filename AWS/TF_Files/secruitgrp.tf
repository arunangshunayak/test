# Create a security group for the EC2 instances
resource "aws_security_group" "instance_sg" {
  name_prefix = "instance_sg_"
  vpc_id      = aws_vpc.main.id

  # Inbound rule to allow SSH access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Replace with more restrictive IP ranges if needed
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}
