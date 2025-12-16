resource "aws_subnet" "public_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.public_subnet_cidr
  availability_zone = var.az_pub_sub

  tags = {
    Name = var.public_subnet_name
  }
}
