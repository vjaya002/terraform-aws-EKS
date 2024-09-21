module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 19.0"

  cluster_name    = "TFE-EKS-CLUSTER"
  cluster_version = "1.30"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  cluster_endpoint_public_access = true

  create_iam_role = true
  iam_role_name   = "vicky_eks"

  eks_managed_node_groups = {
    default = {

      min_size     = 1
      max_size     = 3
      desired_size = 1

      instance_types = ["t3.medium"]
      capacity_type  = "ON_DEMAND"
    }
  }
  tags = var.tags
}

# outputs for eks cluster
output "cluster_arn" {
  description = "kubernetes cluster arn"
  value       = module.eks.cluster_arn
}

output "cluster_endpoint" {
  description = "cluster_endpoint details for eks"
  value       = module.eks.cluster_endpoint
}

output "cluster_iam_role_arn" {
  description = "cluster role arn for eks"
  value       = module.eks.cluster_iam_role_arn
}

output "cluster_iam_role_name" {
  description = "cluster role name for eks"
  value       = module.eks.cluster_iam_role_name
}

output "cluster_id" {
  description = "cluster id for eks"
  value       = module.eks.cluster_id
}

output "cluster_name" {
  description = "cluster name for eks"
  value       = module.eks.cluster_name
}

output "cluster_primary_security_group_id" {
  description = "cluster primary security group id for eks"
  value       = module.eks.cluster_primary_security_group_id
}

output "cluster_security_group_arn" {
  description = "cluster security group arn for eks"
  value       = module.eks.cluster_security_group_arn
}

output "cluster_security_group_id" {
  description = "cluster security group id for eks"
  value       = module.eks.cluster_security_group_id
}

output "cluster_status" {
  description = "cluster status for eks"
  value       = module.eks.cluster_status
}

output "eks_managed_node_groups" {
  description = "eks managed node groups for eks"
  value       = module.eks.eks_managed_node_groups
}

output "eks_managed_node_groups_autoscaling_group_names" {
  description = "eks managed node groups autoscaling group names for eks"
  value       = module.eks.eks_managed_node_groups_autoscaling_group_names
}

output "self_managed_node_groups_autoscaling_group_names" {
  description = "self_managed_node_groups_autoscaling_group_names for eks"
  value       = module.eks.self_managed_node_groups_autoscaling_group_names
}

