resource "aws_internet_gateway" "ig"{
    vpc_id = aws_vpc.Project_vpc.id
}