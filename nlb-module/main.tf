resource "aws_lb" "nlb" {
  name               = var.nlb_name
  internal           = false
  load_balancer_type = "network"
  subnets            = var.subnet_ids
  security_groups    = var.security_group_ids
}

resource "aws_lb_target_group" "tg" {
  name        = var.target_group_name
  port        = 80
  protocol    = "TCP"
  vpc_id      = var.vpc_id
  target_type = "instance"
}

resource "aws_lb_target_group_attachment" "tg_attachment" {
  count            = length(var.ec2_instance_ids)
  target_group_arn = aws_lb_target_group.tg.arn
  target_id        = var.ec2_instance_ids[count.index]
}

 resource "aws_lb_listener" "nlb_listener" {
  load_balancer_arn = aws_lb.nlb.arn
  port              = 80
  protocol          = "TCP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.tg.arn
  }
}
