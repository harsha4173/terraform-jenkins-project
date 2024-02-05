resource "aws_network_acl" "nacl" {
  vpc_id = aws_vpc.Project_vpc.id

  egress {
    protocol   = "tcp"
    rule_no    = 200
    action     = "allow"
    cidr_block =  var.aws_vpc_cidr_block   #[aws_vpc.Project_vpc.cidr_block]
    from_port  = 443
    to_port    = 9000
  }

  ingress {
    protocol   = "tcp"
    rule_no    = 100
    action     = "allow"
    cidr_block = var.aws_vpc_cidr_block #[aws_vpc.Project_vpc.id]
    from_port  = 80
    to_port    = 80
  }

  tags = {
    Name = "nacl"
  }
}