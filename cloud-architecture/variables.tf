variable "aws_region" {
    type = string
    default = "eu-north-1"
}

variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16"
}

variable "public_subnet_1_cidr_block" {
    type = string
    default = "10.0.0.0/24"
}

variable "public_subnet_1_az" {
    type = string
    default = "eu-north-1a"
}

variable "public_subnet_2_cidr_block" {
    type = string
    default = "10.0.1.0/24"
}

variable "public_subnet_2_az" {
    type = string
    default = "eu-north-1b"
}

variable "private_subnet_1_cidr_block" {
    type = string
    default = "10.0.2.0/24"
}

variable "private_subnet_1_az" {
    type = string
    default = "eu-north-1a"
}

variable "private_subnet_2_cidr_block" {
    type = string
    default = "10.0.3.0/24"
}

variable "private_subnet_2_az" {
    type = string
    default = "eu-north-1b"
}

variable "private_subnet_3_cidr_block" {
    type = string
    default = "10.0.4.0/24"
}

variable "private_subnet_3_az" {
    type = string 
    default = "eu-north-1a"
}

variable "private_subnet_4_cidr_block" {
    type = string 
    default = "10.0.5.0/24"
}

variable "private_subnet_4_az" {
    type = string 
    default = "eu-north-1b"
}

variable "launch_template_ami" {
    type = string
    default = "ami-00f34bf9aeacdf007"
}

variable "launch_template_instance_type" {
    type = string
    default = "t3.micro"
}

variable "launch_template_az_1" {
    type = string
    default = "eu-north-1a"
}

variable "launch_template_az_2" {
    type = string
    default = "eu-north-1b"
}

variable "private_rds_instance_class" {
    type = string
    default = "db.t3.micro"
}

variable "private_rds_instance_engine" {
    type = string
    default = "mariadb"
}

variable "private_rds_instance_engine_version" {
    type = string
    default = "11.4.5"
}

variable "private_rds_instance_password" {
    type = string
    default = "password123"
}

variable "private_rds_instance_port" {
    type = number
    default = 3306
}

variable "private_rds_instance_az_1" {
    type = string
    default = "eu-north-1a"
}

variable "private_rds_instance_az_2" {
    type = string
    default = "eu-north-1b"
}

variable "private_rds_security_group_ingress_from_port" {
    type = number
    default = 3306
}

variable "private_rds_security_group_ingress_to_port" {
    type = number
    default = 3306
}

variable "private_rds_security_group_egress_from_port" {
    type = number
    default = 3306
}

variable "private_rds_security_group_egress_to_port" {
    type = number
    default = 3306
}

variable "launch_template_ingress_from_port" {
    type = number
    default = 443
}

variable "launch_template_ingress_to_port" {
    type = number
    default = 443
}

variable "launch_template_egress_from_port" {
    type = number
    default = 443
}

variable "launch_template_egress_to_port" {
    type = number
    default = 443
}