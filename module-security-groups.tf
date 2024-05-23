#https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest

module "security_service_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.2"

  name        = "ssh-rule"
  description = "Security group for user-service with custom ports open within VPC, and ssh locally"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["https-443-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "User-service ports"
      cidr_blocks = "0.0.0.0/0"
    },
    {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      description = "HTTP-security-group ports"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
}
