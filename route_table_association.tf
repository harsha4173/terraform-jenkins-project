//public subnet-1 route_table association
resource "aws_route_table_association" "rta-1" {
    route_table_id = aws_route_table.rt_1.id
    subnet_id = aws_subnet.public_subnet_1.id
   // gateway_id = aws_internet_gateway.ig.id
}

//public subnet-2 route_table association
resource "aws_route_table_association" "rta-2" {
    route_table_id = aws_route_table.pv_rt-2.id
    subnet_id = aws_subnet.public_subnet_2.id
    //gateway_id = aws_internet_gateway.ig.id
}

//private subnet-1,2 route_table association
resource "aws_route_table_association" "pv_rt-1" {
    route_table_id = aws_route_table.pv_rt-1.id
    subnet_id = aws_subnet.pv_subnet_1.id
    
}

resource "aws_route_table_association" "pv_rt-2" {
    route_table_id = aws_route_table.pv_rt-1.id
    subnet_id = aws_subnet.pv_subnet_2.id
    
}

//private subnet-3,4 route_table association
resource "aws_route_table_association" "pv_rt-3" {
    route_table_id = aws_route_table.pv_rt-2.id
    subnet_id = aws_subnet.pv_subnet_3.id
    
}

resource "aws_route_table_association" "pv_rt-4" {
    route_table_id = aws_route_table.pv_rt-2.id
    subnet_id = aws_subnet.pv_subnet_4.id
    
}
