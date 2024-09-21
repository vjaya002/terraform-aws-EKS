# module "eks" {
#   source  = "terraform-aws-modules/eks/aws"
#   version = "~> 19.0"

#   cluster_name    = "TFE-EKS-CLUSTER"
#   cluster_version = "1.30"

#   vpc_id     = module.vpc.vpc_id
#   subnet_ids = module.vpc.private_subnets

#   cluster_endpoint_public_access = true

#   create_iam_role = true
#   iam_role_name   = "vicky_eks"

#   eks_managed_node_groups = {
#     default = {

#       min_size     = 1
#       max_size     = 3
#       desired_size = 1

#       instance_types = ["t3.medium"]
#       capacity_type  = "ON_DEMAND"
#     }
#   }
#   tags = var.tags
# }

# output "cluster_arn" {
#   description = "kubernetes cluster arn"
#   value       = module.eks.cluster_arn
# }

# output "cluster_endpoint" {
#   description = "cluster_endpoint details for eks"
#   value       = module.eks.cluster_endpoint
# }

# output "cluster_iam_role_arn" {
#   description = "cluster role arn for eks"
#   value       = module.eks.cluster_iam_role_arn
# }

# output "cluster_iam_role_name" {
#   description = "cluster role name for eks"
#   value       = module.eks.cluster_iam_role_name
# }

