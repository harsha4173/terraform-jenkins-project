//route table for public subnet-1
resource "aws_route_table" "rt_1" {
    vpc_id = aws_vpc.Project_vpc.id
  route {
    cidr_block = var.route_table_cidr_block
    gateway_id = aws_internet_gateway.ig.id
  }
}

//route table for public subnet-2
resource "aws_route_table" "rt_2" {
    vpc_id = aws_vpc.Project_vpc.id
    route {
        cidr_block = var.route_table_cidr_block
        gateway_id = aws_internet_gateway.ig.id
    }
}

//route table for private subnet-1,2
resource "aws_route_table" "pv_rt-1" {
  vpc_id = aws_vpc.Project_vpc.id
  /*route {
    cidr_block = var.route_table_cidr_block
    //nat_gateway_id = aws_nat_gateway.nat.id
  }*/
}

//route table for private subnet-3,4
resource "aws_route_table" "pv_rt-2" {
    vpc_id = aws_vpc.Project_vpc.id
 /* route {
    cidr_block = var.route_table_cidr_block
  }*/
}
