# AWS NLB Module

This Terraform module creates a **Network Load Balancer (NLB)**, a **Target Group**, attaches EC2 instances, and sets up a **Listener on port 80**.

## Resources Created
- **NLB** (Network Load Balancer)
- **Target Group** (for EC2 instances)
- **Target Group Attachments** (Associates EC2 instances with the Target Group)
- **Listener** (Forwards requests on port 80 to the Target Group)

## Usage
Example usage in your Terraform configuration:

```hcl
module "nlb" {
  source              = "./nlb-module"
  nlb_name           = "my-nlb"
  subnet_ids         = ["subnet-xxxxxx", "subnet-yyyyyy"]
  security_group_ids = ["sg-xxxxxx"]
  vpc_id             = "vpc-xxxxxx"
  target_group_name  = "my-target-group"
  ec2_instance_ids   = ["i-xxxxxx", "i-yyyyyy"]
}
```

## Outputs
- **`nlb_arn`** - ARN of the created NLB
- **`nlb_dns_name`** - DNS Name of the NLB
- **`target_group_arn`** - ARN of the Target Group
- **`listener_arn`** - ARN of the Listener
