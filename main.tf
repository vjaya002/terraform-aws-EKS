resource "random_uuid" "uuid" {
}
resource "random_string" "random_string_generator" {
  length  = 6
  special = false

}

# https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.13.0"
  # name = "my-vpc-${random_uuid.uuid.result}"
  name = var.vpc_name
  cidr = var.cidr_details

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true
  create_igw         = true

  tags = var.tags
}
# ================================
module "autoscaling" {
  source  = "terraform-aws-modules/autoscaling/aws"
  version = "8.0.0"
  # insert the 1 required variable here
  name = var.name

  instance_type               = var.instance_type
  min_size                    = var.min_size
  max_size                    = var.max_size
  desired_capacity            = var.desired_capacity
  termination_policies        = var.termination_policies
  vpc_zone_identifier         = [module.vpc.public_subnets[0], module.vpc.public_subnets[1]]
  launch_template_name        = var.launch_template_name
  image_id                    = var.image_id
  create_iam_instance_profile = var.create_iam_instance_profile
  iam_instance_profile_name   = var.iam_instance_profile_name
  iam_role_description        = var.iam_role_description
  iam_role_name               = var.iam_role_name
  tags                        = var.tags

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
}

# module "s3-bucket" {
#   source  = "terraform-aws-modules/s3-bucket/aws"
#   version = "4.1.0"
#   bucket  = lower("${var.bucket}-${random_string.random_string_generator.result}")
#   # bucket = "my-s3-bucket-${random_uuid.uuid.result}"
#   acl = "private"

#   control_object_ownership = true
#   object_ownership         = "ObjectWriter"
#   versioning = {
#     enabled = true
#   }
#   tags = var.tags
# }


module "codedeploy" {
  source  = "Cloud-42/codedeploy/aws"
  version = "2.0.0"
  # insert the 3 required variables here
  autoscaling_groups = module.autoscaling.autoscaling_group_name
  # data_bucket_name       = module.s3-bucket.s3_bucket_id
  data_bucket_name       = lower("${var.bucket}-${random_string.random_string_generator.result}")
  name                   = var.codedeploy_name
  compute_platform       = var.compute_platform
  expiration             = var.expiration
  lifecycle_rule_enabled = var.lifecycle_rule_enabled
  tags                   = var.tags
}
