
# Create EC2 Instances
resource "aws_instance" "WebSrv1" {
  ami           = "ami-05fa46471b02db0ce" # Replace with your preferred AMI ID
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_1.id
  tags = {
    Name = "WebSrv1"
  }
}

resource "aws_instance" "WebSrv2" {
  ami           = "ami-05fa46471b02db0ce" # Replace with your preferred AMI ID
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public_2.id
  tags = {
    Name = "WebSrv2"
  }
}