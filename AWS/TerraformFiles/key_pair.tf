resource "aws_key_pair" "laptop_key" {
  key_name   = "laptop_key"
  public_key = file("${path.module}/id_rsa.pub")
}