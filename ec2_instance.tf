//public instance 
resource "aws_instance" "instance_1" {
    ami = var.ami
    instance_type = var.instance_1_type
    key_name = var.key_pair
    availability_zone = "us-west-1a"
    subnet_id = aws_subnet.public_subnet_1.id
    vpc_security_group_ids = [aws_security_group.sg.id]
    #ebs_optimized = true
    associate_public_ip_address = true

    /*root_block_device {
      volume_size = 10
      volume_type = "gp2"
      delete_on_termination = true
    }*/
}

//private instance
resource "aws_instance" "pv_instance_1" {
    ami = var.ami                                                      //data.aws_ami.ubuntu.id
    instance_type = var.instance_1_type
    key_name = var.key_pair
    availability_zone = var.availability_zone_public_subnet_2
    subnet_id = aws_subnet.public_subnet_2.id
    vpc_security_group_ids = [aws_security_group.sg.id]
    #ebs_optimized = true
    associate_public_ip_address = true

    /*root_block_device {
      volume_size = 10
      volume_type = "gp2"
      delete_on_termination = true
    }*/
  
}