//Public subnet-1
resource "aws_subnet" "public_subnet_1" {
    vpc_id = aws_vpc.Project_vpc.id
    availability_zone = var.availability_zone_public_subnet_1
    cidr_block = var.subnet_1_cidr_block
    map_public_ip_on_launch = true
}

//public subnet-2
resource "aws_subnet" "public_subnet_2"{
    vpc_id = aws_vpc.Project_vpc.id
    availability_zone = var.availability_zone_public_subnet_2
    cidr_block = var.subnet_2_cidr_block
    map_public_ip_on_launch = true
}


