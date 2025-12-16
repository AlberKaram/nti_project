resource "aws_subnet" "private_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.private_subnet_cidr
    availability_zone = var.az_private_sub


  tags = {
    Name = var.private_subnet_name
  }
}