provider "aws" {
  region     = var.region
  access_key = var.access
  secret_key = var.secret
}

#module "ec2-instance" {
#  source  = "terraform-aws-modules/ec2-instance/aws"
#  version = "4.1.4"
resource "aws_instance" "ec2" {
  ami                    = "ami-0f62d9254ca98e1aa"
  #name                   = "aswin-instance"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0c090f69daf43d845"
  key_name               = "qb-aws-singapore"
  vpc_security_group_ids = ["sg-0e45e2c8192a95a95"]
  tags = {
    Name = "aswin"
  }
}
