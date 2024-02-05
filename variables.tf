// vpc variable
variable "aws_vpc_cidr_block" {
    description = "enter the vpc cidr_block"
  
}

// public subnet-1 az and cidr_block
variable "availability_zone_public_subnet_1" {
    description = "enter the availability_zone for public subnet-1 "
}

variable "subnet_1_cidr_block" {
    description = "public subnet -1 cidr_block"
}

//public subnet-2 az and cidr_block

variable "availability_zone_public_subnet_2" {
  description = "enter the avalability_zone of public subnet-2"
}

variable "subnet_2_cidr_block" {
    description = "enter the cidr_block for public subnet-2"
}

//private subnet-1 AZ and cidr_block

variable "pv_subnet_1_AZ" {
    description = "enter same AZ as public subnet-1 AZ"
}

variable "pv_subnet_1_cidr_block" {
    description = "enter private subnet-1 cidr_block"
}

//private subnet-2 AZ and cidr_block
variable "pv_subnet_2_cidr_block" {
    description = "enter private subnet-2 cidr_block"
  
}

variable "pv_subnet_2_AZ" {
  description = "enter same AZ as public subnet-1 AZ"
}

//private subnet-3 AZ and cidr_block
variable "pv_subnet_3_cidr_block" {
    description = "enter private subnet-3 cidr_block"
  
}

variable "pv_subnet_3_AZ" {
  description = "enter same AZ as public subnet-2 AZ"
}

//private subnet-4 AZ and cidr_block
variable "pv_subnet_4_AZ" {
    description = "enter same AZ as public subnet-2 AZ"
  
}
variable "pv_subnet_4_cidr_block" {
    description = "enter private subnet-4 cidr_block"
}

// route_table cidr_block
variable "route_table_cidr_block" {
    default = "0.0.0.0/0"
}

//ec2 instance variables

variable "ami" {
    type = string
    default = "ami-0ce2cb35386fc22e9"
}

variable "instance_1_type" {
    type = string
    default = "t2.micro"
}

variable "key_pair" {
    type = string
    default = "harsha"
}