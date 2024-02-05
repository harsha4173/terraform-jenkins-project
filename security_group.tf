resource "aws_security_group" "sg" { 
   name = "project-1_sg"
   vpc_id = aws_vpc.Project_vpc.id
   description = "allow ssh and HTTP protocol"

   tags = {
    Name = "project-1_sg"
   }
   ingress  {
        description = "allow ssh port"
        protocol = "tcp"
        from_port = 22
        to_port = 22
        cidr_blocks = [aws_vpc.Project_vpc.cidr_block]
    }
    ingress  {
        description = "allow http ans sql port"
        protocol = "tcp"
        from_port = 80
        to_port = 3306
        cidr_blocks   = [aws_vpc.Project_vpc.cidr_block]
    }
   egress  {
        from_port       = 0
        to_port         = 0
        protocol        = "-1"
        cidr_blocks     = ["0.0.0.0/0"]
   }
}
