variable "s3_backend" {
  description = "Helps in storing the state in the bucket"
  type        = string
}
variable "s3_key" {
  description = "Helps in storing the state in the bucket if you want to a particular folder directory"
  type        = string
}

# variables.tf
variable "environment" {
  description = "The environment for the resources (e.g., dev, test, prod)"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default     = {}
}


# variable "aws_region" {
#   description = "region of aws to connect"
#   type        = string
#   default     = "us-east-1"
# }

# variable "s3_encrypt" {
#   description = "do we want to encrypt the bucket objects"
#   type        = bool
#   default     = true
# }

# variable "dynamo_db_table" {
#   description = "my dynamo db table name"
#   type        = string
#   default     = "tf-backend"
# }

variable "vpc_name" {
  description = "name of the vpc to connect"
  type        = string
  default     = "my-vpc-terraform"
}

variable "cidr_details" {

  description = "value of the cidr"
  type        = string
  default     = "10.0.0.0/16"

}

variable "map_public_ip_on_launch" {

  description = "value of the public ip on the launch"
  type        = bool
  default     = true
}


# ASG Details 
variable "name" {
  description = "name of the auto-scaling-group"
  type        = string
  default     = null
}

variable "instance_type" {
  description = "type of ec2 instace is required"
  type        = string
  default     = "t2.micro"
}

variable "min_size" {
  description = "min size of the instance we need to run"
  type        = number
  default     = 0
}

variable "max_size" {
  description = "max size of the instance we need to run"
  type        = number
  default     = 1
}

variable "desired_capacity" {
  description = "desired number of the instance we need to run"
  type        = number
  default     = 0
}

variable "termination_policies" {
  description = "A list of policies to decide how the instances in ASG shoould be terminated"
  type        = list(string)
  default     = []
}

variable "vpc_zone_identifier" {
  description = "A list of subnets the to launch resources"
  type        = list(string)
  default     = []
}

variable "launch_template_name" {
  description = "name of the launch template used to launch the instance"
  type        = string
}

variable "image_id" {
  description = "ami name of the image-id to launch the instance"
  type        = string
  default     = "ami-0427090fd1714168b"
}

variable "create_iam_instance_profile" {

  description = "creating iam instance profile for the instance"
  type        = bool
  default     = false
}

variable "iam_instance_profile_name" {

  description = "iam instance profile name to launch the instance"
  type        = string
  default     = "tfe-ec2"
}

variable "iam_role_description" {
  description = "iam_role_description for future identification"
  type        = string
  default     = "iam role for terraform ec2 instance"
}

variable "iam_role_name" {
  description = "iam role name to launch the instance"
  type        = string
  default     = "TFE-IAM"
}


variable "bucket" {
  description = "name of the bucket to launch the instance"
  type        = string
  default     = "my-terrfarom-bucket"
}

#Code-deploy

variable "codedeploy_name" {
  type        = string
  description = "name of the code-deploy"
  default     = "terraform-code-deploy"
}

variable "compute_platform" {

  description = "type of the platform trying to deploy the application"
  type        = string
  default     = "Server"
}
variable "deployment_config_name" {
  description = "Deployment config name."
  type        = string
  default     = "CodeDeployDefault.AllAtOnce"
}

variable "expiration" {
  description = "Specifies number of days after which s3 objects will expire."
  type        = number
  default     = 120
}

variable "lifecycle_rule_enabled" {
  description = "Enable / disable default lifecycle rule on s3 bucket."
  type        = bool
  default     = true
}

