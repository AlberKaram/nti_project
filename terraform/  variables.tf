### provider ###
variable "aws_region" {
  type    = string
  default = "us-east-2"
}


### vpc ###
variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_name" {
  type = string
  default = "nti_project"
}


##### pub sub ###


variable "public_subnet_cidr" {
  type = string
  default = "10.0.1.0/24"
}

variable "public_subnet_name" {
  type = string
  default = "pub_sub"
}

variable "az_pub_sub" {
  type = string
  default = "us-east-2a"
}

##### private sub ###

variable "private_subnet_cidr" {
  type = string
  default = "10.0.2.0/24"
}

variable "private_subnet_name" {
  type = string
  default = "private_sub"
}

variable "az_private_sub" {
  type = string
  default = "us-east-2b"
}

##### public route table ###
variable "pub_rt_name" {
  type = string
  default = "pub_rt"
}

##### private route table ###
variable "private_rt_name" {
  type = string
  default = "private_rt"
}