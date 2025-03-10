variable "nlb_name" {
  description = "Name of the Network Load Balancer"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for the NLB"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs for the NLB"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID where the NLB is deployed"
  type        = string
}

variable "target_group_name" {
  description = "Name of the Target Group"
  type        = string
}

variable "ec2_instance_ids" {
  description = "List of EC2 instance IDs to attach to the Target Group"
  type        = list(string)
}


# variable "certificate_arn" {
#  description = "ARN of the SSL certificate in ACM"
#  type        = string
#}
