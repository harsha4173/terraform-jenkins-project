# load balancer
resource "aws_alb" "project_lb" {
  name = "project-1-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.sg.id]
  subnets = [aws_subnet.public_subnet_1.id , aws_subnet.public_subnet_2.id]
  tags = {
    Name = "project_1_alb"
  }
}

resource "aws_lb_target_group" "tg" {
    name = "tg"
    vpc_id = aws_vpc.Project_vpc.id
    port = 80
    protocol = "HTTP"

    health_check {
      path = "/"
      port = "traffic-port"
      protocol = "HTTP"
      healthy_threshold = 5
      unhealthy_threshold = 2
      timeout = 5
      interval = 30
    }
}

resource "aws_lb_target_group_attachment" "tga-1" {
  target_group_arn = aws_lb_target_group.tg.arn 
  target_id = aws_instance.instance_1.id
  port = 80
}

resource "aws_lb_target_group_attachment" "tga-2" {
  target_group_arn = aws_lb_target_group.tg.arn
  target_id = aws_instance.pv_instance_1.id
  port = 80
}

resource "aws_lb_listener" "listener" {
  load_balancer_arn = aws_alb.project_lb.arn
  port = 80
  protocol = "HTTP"
  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}