# creating a multizone aws_db_instance 

resource "aws_db_instance" "db_multi_az"     {
  
  identifier = "project-db-instance"
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t2.micro"
  allocated_storage = 5

  db_name           = "projectdbinstance"
  username          = "harsha"
  password          = "harsha2001"
  port              = "3306"

  multi_az          = true

  skip_final_snapshot = true
  
  vpc_security_group_ids = [aws_security_group.sg.id]
  db_subnet_group_name   = aws_db_subnet_group.db_instance_subg.name
 // availability_zone      = var.pv_subnet_4_AZ
}

# db_instance subnet group

resource "aws_db_subnet_group" "db_instance_subg" {
  
  name = "database-subnet-group1"
  subnet_ids = [aws_subnet.pv_subnet_4.id , aws_subnet.pv_subnet_1.id ]
 
}


resource "aws_db_instance" "rds_db"     {
  
  identifier = "project-rds-db"
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t2.micro"
  allocated_storage = 5

  db_name           = "projectrdsdb"
  username          = "harsha"
  password          = "harsha2001"
  port              = "3306"

  multi_az          = false

  skip_final_snapshot = true
  
  vpc_security_group_ids = [aws_security_group.sg.id]
  db_subnet_group_name   = aws_db_subnet_group.rds_db_subg.name
 // availability_zone      = var.pv_subnet_2_AZ
}

# db_instance subnet group

resource "aws_db_subnet_group" "rds_db_subg" {
  
  name = "database-subnet-group2"
  subnet_ids = [aws_subnet.pv_subnet_2.id , aws_subnet.pv_subnet_3.id ]
  
}

//specific availability zone is not valid for Multi-AZ instances. 















#module "rds" {
  /*source  = "terraform-aws-modules/rds/aws"
  version = "6.3.1"*/
  #backup_window       = "00:00-06:00"
  #maintenance_window  = "Mon:06:00-09:00"