output "nlb_arn" {
  description = "The ARN of the created NLB"
  value       = aws_lb.nlb.arn
}

output "nlb_dns_name" {
  description = "The DNS name of the NLB"
  value       = aws_lb.nlb.dns_name
}

output "target_group_arn" {
  description = "The ARN of the Target Group"
  value       = aws_lb_target_group.tg.arn
}

#output "listener_arn" {
#  description = "The ARN of the Listener"
#  value       = aws_lb_listener.nlb_listener.arn
#}
