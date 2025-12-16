######## eip ##########
resource "aws_eip" "nat_eip" {
  domain = "vpc"
}

######## ngw ##########
resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = var.public_subnet_id

  tags = {
    Name = "nat-gateway"
  }
}


######## private_rt ##########

resource "aws_route_table" "private_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw.id
  }


  tags = {
    Name = var.private_rt_name
  }
}

######## subnet assossition ##########
resource "aws_route_table_association" "b" {
  subnet_id      = var.private_subnet_id
  route_table_id = aws_route_table.private_rt.id
}