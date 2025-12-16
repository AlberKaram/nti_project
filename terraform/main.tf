module "vpc" {
    source = "./modules/0-VPC"
    vpc_cidr = var.vpc_cidr
    vpc_name = var.vpc_name
}
output "vpc_id" {
    value = module.vpc.vpc_id
  
}

module "pub_sub" {
    source = "./modules/1-pub-Subnet"
    vpc_id = module.vpc.vpc_id
    public_subnet_cidr = var.public_subnet_cidr
    public_subnet_name = var.public_subnet_name   
    az_pub_sub = var.az_pub_sub
  
}

module "private_sub" {
    source = "./modules/2-private-Subnet"
    vpc_id = module.vpc.vpc_id
    private_subnet_cidr = var.private_subnet_cidr  
    private_subnet_name = var.private_subnet_name
    az_private_sub = var.az_private_sub
}