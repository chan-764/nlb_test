module "nlb" {
  source              = "../"  # Instead of "../nlb-module"
  nlb_name           = "my-nlb"
  subnet_ids         = ["subnet-0eb46593b765d72d1", "subnet-0b96d439b75235b55"]
  security_group_ids = ["sg-02964b6b8c862b499"]
  vpc_id             = "vpc-02d271639dc1df003"
  target_group_name  = "my-target-group"
  ec2_instance_ids   = ["i-05d0ea8ce4256e04f", "i-04407110df70fa54a"]
#  certificate_arn    = "arn:aws:acm:us-west-2:985539773806:certificate/cb2b5eaf-561c-4e37-8c81-6301025c3e15"
}

module "nlb_2" {
  source              = "../"  # Calling the same module to create another NLB
  nlb_name           = "nlb-two"
  subnet_ids         = ["subnet-0eb46593b765d72d1", "subnet-0b96d439b75235b55"]
  security_group_ids = ["sg-02964b6b8c862b499"]
  vpc_id             = "vpc-02d271639dc1df003"
  target_group_name  = "target-group-2"
  ec2_instance_ids   = ["i-05d0ea8ce4256e04f", "i-04407110df70fa54a"]
#  certificate_arn    = "arn:aws:acm:us-west-2:985539773806:certificate/cb2b5eaf-561c-4e37-8c81-6301025c3e15"
}

