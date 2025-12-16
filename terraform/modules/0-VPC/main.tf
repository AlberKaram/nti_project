############################################
# VPC Module – main.tf
############################################

# 1) VPC

# 2) Internet Gateway

# 3) Public Subnets

# 4) Private Subnets

# 5) Elastic IP for NAT

# 6) NAT Gateway

# 7) Public Route Table + Routes

# 8) Private Route Table + Routes

# 9) Subnet Associations

# 10) Tags required for EKS

############################################

# 1) VPC

resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr 
  tags = {
    Name = var.vpc_name
  }
}