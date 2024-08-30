
environment = "local"
tags = {
  Environment = "local"
  Project     = "spring-terraform-project"
}
s3_backend                  = "my-aws-terraform-s3-backend-vicky"
s3_key                      = "state/terraform.tfstate"
vpc_name                    = "my-vpc-terraform"
cidr_details                = "10.0.0.0/16"
name                        = "tf-asg"
instance_type               = "t2.micro"
min_size                    = 1
max_size                    = 3
desired_capacity            = 1
termination_policies        = ["OldestInstance"]
launch_template_name        = "my-tf-launch-template"
image_id                    = "ami-0427090fd1714168b"
codedeploy_name             = "terraform-codedeploy"
create_iam_instance_profile = true
iam_instance_profile_name   = "TFE-EC2"
iam_role_name               = "TFE-IAM"
bucket                      = "my-tfe-bucket"
compute_platform            = "Server"
deployment_config_name      = "CodeDeployDefault.AllAtOnce"
expiration                  = 180
lifecycle_rule_enabled      = true
map_public_ip_on_launch     = true

# terraform init -upgrade -backend-config="bucket=my-aws-terraform-s3-backend-vicky" -backend-config="key=state/terraform.tfstate"