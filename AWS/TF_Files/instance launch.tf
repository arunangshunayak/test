# Launch two EC2 instances within the subnet
resource "aws_instance" "ec2_instance_1" {
  ami           = var.AMI 
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = ["${aws_security_group.instance_sg.id}"]
  key_name               = aws_key_pair.laptop_key.key_name
  root_block_device {
    volume_size = 8  
    volume_type = "gp2"  
  }
}

resource "aws_instance" "ec2_instance_2" {
  ami           = var.AMI  
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_subnet.id
  vpc_security_group_ids = ["${aws_security_group.instance_sg.id}"]
  key_name               = aws_key_pair.laptop_key.key_name
  root_block_device {
    volume_size = 8 
    volume_type = "gp2"  
  }
}
