resource "random_uuid" "uuid" {

}
resource "random_string" "random_string_generator" {
  length  = 6
  special = false

}

# module "iam_ec2_policy" {
#   source = "terraform-aws-modules/iam/aws//modules/iam-policy"

#   name        = "terraform-ec2-policy"
#   path        = "/"
#   description = "My terraform ec2-policy"

#   policy = <<EOF
# {
#     "Version": "2012-10-17",
#     "Statement": [
#         {
#             "Effect": "Allow",
#             "Action": [
#                 "iam:GenerateCredentialReport",
#                 "iam:GenerateServiceLastAccessedDetails",
#                 "iam:Get*",
#                 "iam:List*",
#                 "iam:SimulateCustomPolicy",
#                 "iam:SimulatePrincipalPolicy"
#             ],
#             "Resource": "*"
#         }
#     ]
# }
# EOF
# }

module "key-pair" {
  source  = "terraform-aws-modules/key-pair/aws"
  version = "2.0.2"
  create  = true

  key_name              = "my-tfe-${random_string.random_string_generator.result}"
  create_private_key    = true
  private_key_algorithm = "RSA"
  private_key_rsa_bits  = 4096
  tags = {
    Terraform   = "true"
    Environment = "dev"
    version     = "2.0.2"
  }
}



module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type = "t2.micro"
  key_name      = module.key-pair.key_pair_name
  monitoring    = false

  # create_iam_instance_profile = true
  # iam_instance_profile        = module.iam_ec2_policy.name
  # iam_role_description        = module.iam_ec2_policy.description
  # iam_role_name               = module.iam_ec2_policy.name
  # iam_role_path               = module.iam_ec2_policy.path
  # iam_role_use_name_prefix    = true

  iam_role_tags = {
    Terraform   = "true"
    Environment = "dev"
  }

  vpc_security_group_ids      = [module.vpc.default_security_group_id, module.security_service_sg.security_group_id]
  subnet_id                   = module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}








