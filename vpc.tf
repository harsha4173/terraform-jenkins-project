resource "aws_vpc" "Project_vpc" {
    cidr_block = var.aws_vpc_cidr_block
    tags = {
        Name = "Project_vpc"
    }
}