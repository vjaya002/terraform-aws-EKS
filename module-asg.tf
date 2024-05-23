# https://registry.terraform.io/modules/terraform-aws-modules/autoscaling/aws/latest
module "autoscaling" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "7.4.1"
  # insert the 1 required variable here

  name = "my-autoscaling-group"

  min_size                  = 1
  max_size                  = 2
  desired_capacity          = 1
  wait_for_capacity_timeout = 0
  health_check_type         = "EC2"

  vpc_zone_identifier = [module.vpc.public_subnets[0], module.vpc.public_subnets[1]]

  availability_zones = ["us-east-1"]

  termination_policies = ["OldestInstance"]

  initial_lifecycle_hooks = [
    {
      name                  = "ExampleStartupLifeCycleHook"
      default_result        = "CONTINUE"
      heartbeat_timeout     = 60
      lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
      notification_metadata = jsonencode({ "hello" = "world" })
    },
    {
      name                  = "ExampleTerminationLifeCycleHook"
      default_result        = "CONTINUE"
      heartbeat_timeout     = 180
      lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
      notification_metadata = jsonencode({ "goodbye" = "world" })
    }
  ]

  launch_template_version = "$Latest"

  scaling_policies = {

  }

  security_groups = []

  max_instance_lifetime = 86400
}
