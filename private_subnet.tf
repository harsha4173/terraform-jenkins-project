//private subnet-1
resource "aws_subnet" "pv_subnet_1" {
  vpc_id = aws_vpc.Project_vpc.id
  availability_zone = var.pv_subnet_1_AZ
  cidr_block = var.pv_subnet_1_cidr_block
}

//private subnet-2
resource "aws_subnet" "pv_subnet_2" {
  vpc_id = aws_vpc.Project_vpc.id
  availability_zone = var.pv_subnet_2_AZ
  cidr_block = var.pv_subnet_2_cidr_block
}

//private subnet-3
resource "aws_subnet" "pv_subnet_3" {
  vpc_id = aws_vpc.Project_vpc.id
  availability_zone = var.pv_subnet_3_AZ
  cidr_block = var.pv_subnet_3_cidr_block
}

//private subnet-4
resource "aws_subnet" "pv_subnet_4" {
  vpc_id = aws_vpc.Project_vpc.id
  availability_zone = var.availability_zone_public_subnet_2
  cidr_block = var.pv_subnet_4_cidr_block
  
}

