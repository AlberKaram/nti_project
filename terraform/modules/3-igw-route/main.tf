######## igw ##########
resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id
}

######## pub-rt ##########

resource "aws_route_table" "pub_rt" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }


  tags = {
    Name = var.pub_rt_name
  }
}

######## subnet assossition ##########
resource "aws_route_table_association" "a" {
  subnet_id      = var.public_subnet_id
  route_table_id = aws_route_table.pub_rt.id
}