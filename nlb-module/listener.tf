 #resource "aws_lb_listener" "nlb_https_listener" {
 # load_balancer_arn = aws_lb.nlb.arn
 # port              = 443
 # protocol          = "TLS"  # Use TLS for HTTPS

 # ssl_policy        = "ELBSecurityPolicy-2016-08"  # AWS Recommended SSL Policy
 # certificate_arn   = var.certificate_arn         # Pass ACM Certificate ARN

 # default_action {
 #   type             = "forward"
 #   target_group_arn = aws_lb_target_group.tg.arn
 # }
 #}
