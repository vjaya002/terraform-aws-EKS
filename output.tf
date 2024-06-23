#### s3 bucket

# output "bucket-arn" {
#   value     = module.s3_bucket.s3_bucket_arn
#   sensitive = true
# }

# output "s3_bucket_lifecycle_configuration_rules" {
#   value = module.s3_bucket.s3_bucket_lifecycle_configuration_rules
# }

# output "s3_bucket_policy" {
#   value = module.s3_bucket.s3_bucket_policy
# }

# output "s3_bucket_region" {
#   value = module.s3_bucket.s3_bucket_region
# }

# =========vpc

# output "azs" {
#   description = "A list of availability zones specified as an argument to this module"
#   value       = module.vpc.azs
# }

# output "cgw_arns" {
#   description = "List of ARNs of Customer Gateway"
#   value       = module.vpc.cgw_arns
# }

# output "cgw_ids" {
#   description = "List of IDs of Customer Gateway"
#   value       = module.vpc.cgw_ids
# }

# output "database_internet_gateway_route_id" {
#   description = "ID of the database internet gateway route"
#   value       = module.vpc.database_internet_gateway_route_id
# }

# output "database_ipv6_egress_route_id" {
#   description = "ID of the database IPv6 egress route"
#   value       = module.vpc.database_ipv6_egress_route_id
# }

# output "database_nat_gateway_route_ids" {
#   description = "List of IDs of the database nat gateway route"
#   value       = module.vpc.database_nat_gateway_route_ids
# }

# output "database_network_acl_arn" {
#   description = "ARN of the database network ACL"
#   value       = module.vpc.database_network_acl_arn
# }

# output "database_network_acl_id" {
#   description = "ID of the database network ACL"
#   value       = module.vpc.database_network_acl_id
# }

# output "database_route_table_association_ids" {
#   description = "List of IDs of the database route table association"
#   value       = module.vpc.database_route_table_association_ids
# }

# output "database_route_table_ids" {
#   description = "List of IDs of database route tables"
#   value       = module.vpc.database_route_table_ids
# }

# output "database_subnet_arns" {
#   description = "List of ARNs of database subnets"
#   value       = module.vpc.database_subnet_arns
# }

# output "database_subnet_group" {
#   description = "ID of database subnet group"
#   value       = module.vpc.database_subnet_group
# }

# output "database_subnet_group_name" {
#   description = "Name of database subnet group"
#   value       = module.vpc.database_subnet_group_name
# }

# output "database_subnets" {
#   description = "List of IDs of database subnets"
#   value       = module.vpc.database_subnets
# }

# output "database_subnets_cidr_blocks" {
#   description = "List of cidr_blocks of database subnets"
#   value       = module.vpc.database_subnets_cidr_blocks
# }

# output "database_subnets_ipv6_cidr_blocks" {
#   description = "List of IPv6 cidr_blocks of database subnets in an IPv6 enabled VPC"
#   value       = module.vpc.database_subnets_ipv6_cidr_blocks
# }

# output "default_network_acl_id" {
#   description = "The ID of the default network ACL"
#   value       = module.vpc.default_network_acl_id
# }

# output "default_route_table_id" {
#   description = "The ID of the default route table"
#   value       = module.vpc.default_route_table_id
# }

# output "default_security_group_id" {
#   description = "The ID of the security group created by default on VPC creation"
#   value       = module.vpc.default_security_group_id
# }

# output "default_vpc_arn" {
#   description = "The ARN of the Default VPC"
#   value       = module.vpc.default_vpc_arn
# }

# output "default_vpc_cidr_block" {
#   description = "The CIDR block of the Default VPC"
#   value       = module.vpc.default_vpc_cidr_block
# }

# output "default_vpc_default_network_acl_id" {
#   description = "The ID of the default network ACL of the Default VPC"
#   value       = module.vpc.default_vpc_default_network_acl_id
# }

# output "default_vpc_default_route_table_id" {
#   description = "The ID of the default route table of the Default VPC"
#   value       = module.vpc.default_vpc_default_route_table_id
# }

# output "default_vpc_default_security_group_id" {
#   description = "The ID of the security group created by default on Default VPC creation"
#   value       = module.vpc.default_vpc_default_security_group_id
# }

# output "default_vpc_enable_dns_hostnames" {
#   description = "Whether or not the Default VPC has DNS hostname support"
#   value       = module.vpc.default_vpc_enable_dns_hostnames
# }

# output "default_vpc_enable_dns_support" {
#   description = "Whether or not the Default VPC has DNS support"
#   value       = module.vpc.default_vpc_enable_dns_support
# }

# output "default_vpc_id" {
#   description = "The ID of the Default VPC"
#   value       = module.vpc.default_vpc_id
# }

# output "default_vpc_instance_tenancy" {
#   description = "Tenancy of instances spin up within Default VPC"
#   value       = module.vpc.default_vpc_instance_tenancy
# }

# output "default_vpc_main_route_table_id" {
#   description = "The ID of the main route table associated with the Default VPC"
#   value       = module.vpc.default_vpc_main_route_table_id
# }

# output "dhcp_options_id" {
#   description = "The ID of the DHCP options"
#   value       = module.vpc.dhcp_options_id
# }

# output "egress_only_internet_gateway_id" {
#   description = "The ID of the egress only Internet Gateway"
#   value       = module.vpc.egress_only_internet_gateway_id
# }

# output "elasticache_network_acl_arn" {
#   description = "ARN of the elasticache network ACL"
#   value       = module.vpc.elasticache_network_acl_arn
# }

# output "elasticache_network_acl_id" {
#   description = "ID of the elasticache network ACL"
#   value       = module.vpc.elasticache_network_acl_id
# }

# output "elasticache_route_table_association_ids" {
#   description = "List of IDs of the elasticache route table association"
#   value       = module.vpc.elasticache_route_table_association_ids
# }

# output "elasticache_route_table_ids" {
#   description = "List of IDs of elasticache route tables"
#   value       = module.vpc.elasticache_route_table_ids
# }

# output "elasticache_subnet_arns" {
#   description = "List of ARNs of elasticache subnets"
#   value       = module.vpc.elasticache_subnet_arns
# }

# output "elasticache_subnet_group" {
#   description = "ID of elasticache subnet group"
#   value       = module.vpc.elasticache_subnet_group
# }

# output "elasticache_subnet_group_name" {
#   description = "Name of elasticache subnet group"
#   value       = module.vpc.elasticache_subnet_group_name
# }

# output "elasticache_subnets" {
#   description = "List of IDs of elasticache subnets"
#   value       = module.vpc.elasticache_subnets
# }

# output "elasticache_subnets_cidr_blocks" {
#   description = "List of cidr_blocks of elasticache subnets"
#   value       = module.vpc.elasticache_subnets_cidr_blocks
# }

# output "elasticache_subnets_ipv6_cidr_blocks" {
#   description = "List of IPv6 cidr_blocks of elasticache subnets in an IPv6 enabled VPC"
#   value       = module.vpc.elasticache_subnets_ipv6_cidr_blocks
# }

# output "igw_arn" {
#   description = "The ARN of the Internet Gateway"
#   value       = module.vpc.igw_arn
# }

# output "igw_id" {
#   description = "The ID of the Internet Gateway"
#   value       = module.vpc.igw_id
# }

# output "intra_network_acl_arn" {
#   description = "ARN of the intra network ACL"
#   value       = module.vpc.intra_network_acl_arn
# }

# output "intra_network_acl_id" {
#   description = "ID of the intra network ACL"
#   value       = module.vpc.intra_network_acl_id
# }

# output "intra_route_table_association_ids" {
#   description = "List of IDs of the intra route table association"
#   value       = module.vpc.intra_route_table_association_ids
# }

# output "intra_route_table_ids" {
#   description = "List of IDs of intra route tables"
#   value       = module.vpc.intra_route_table_ids
# }

# output "intra_subnet_arns" {
#   description = "List of ARNs of intra subnets"
#   value       = module.vpc.intra_subnet_arns
# }

# output "intra_subnets" {
#   description = "List of IDs of intra subnets"
#   value       = module.vpc.intra_subnets
# }

# output "intra_subnets_cidr_blocks" {
#   description = "List of cidr_blocks of intra subnets"
#   value       = module.vpc.intra_subnets_cidr_blocks
# }

# output "intra_subnets_ipv6_cidr_blocks" {
#   description = "List of IPv6 cidr_blocks of intra subnets in an IPv6 enabled VPC"
#   value       = module.vpc.intra_subnets_ipv6_cidr_blocks
# }

# output "name" {
#   description = "The name of the VPC specified as an argument to this module"
#   value       = module.vpc.name
# }

# output "nat_ids" {
#   description = "List of allocation ID of Elastic IPs created for AWS NAT Gateway"
#   value       = module.vpc.nat_ids
# }

# output "nat_public_ips" {
#   description = "List of public Elastic IPs created for AWS NAT Gateway"
#   value       = module.vpc.nat_public_ips
# }

# output "natgw_ids" {
#   description = "List of NAT Gateway IDs"
#   value       = module.vpc.natgw_ids
# }

# output "natgw_interface_ids" {
#   description = "List of Network Interface IDs assigned to NAT Gateways"
#   value       = module.vpc.natgw_interface_ids
# }

# output "outpost_network_acl_arn" {
#   description = "ARN of the outpost network ACL"
#   value       = module.vpc.outpost_network_acl_arn
# }

# output "outpost_network_acl_id" {
#   description = "ID of the outpost network ACL"
#   value       = module.vpc.outpost_network_acl_id
# }

# output "outpost_subnet_arns" {
#   description = "List of ARNs of outpost subnets"
#   value       = module.vpc.outpost_subnet_arns
# }

# output "outpost_subnets" {
#   description = "List of IDs of outpost subnets"
#   value       = module.vpc.outpost_subnets
# }

# output "outpost_subnets_cidr_blocks" {
#   description = "List of cidr_blocks of outpost subnets"
#   value       = module.vpc.outpost_subnets_cidr_blocks
# }

# output "outpost_subnets_ipv6_cidr_blocks" {
#   description = "List of IPv6 cidr_blocks of outpost subnets in an IPv6 enabled VPC"
#   value       = module.vpc.outpost_subnets_ipv6_cidr_blocks
# }

# output "private_ipv6_egress_route_ids" {
#   description = "List of IDs of the IPv6 egress route"
#   value       = module.vpc.private_ipv6_egress_route_ids
# }

# output "private_nat_gateway_route_ids" {
#   description = "List of IDs of the private nat gateway route"
#   value       = module.vpc.private_nat_gateway_route_ids
# }

# output "private_network_acl_arn" {
#   description = "ARN of the private network ACL"
#   value       = module.vpc.private_network_acl_arn
# }

# output "private_network_acl_id" {
#   description = "ID of the private network ACL"
#   value       = module.vpc.private_network_acl_id
# }

# output "private_route_table_association_ids" {
#   description = "List of IDs of the private route table association"
#   value       = module.vpc.private_route_table_association_ids
# }

# output "private_route_table_ids" {
#   description = "List of IDs of private route tables"
#   value       = module.vpc.private_route_table_ids
# }

# output "private_subnet_arns" {
#   description = "List of ARNs of private subnets"
#   value       = module.vpc.private_subnet_arns
# }

# output "private_subnets" {
#   description = "List of IDs of private subnets"
#   value       = module.vpc.private_subnets
# }

# output "private_subnets_cidr_blocks" {
#   description = "List of cidr_blocks of private subnets"
#   value       = module.vpc.private_subnets_cidr_blocks
# }

# output "private_subnets_ipv6_cidr_blocks" {
#   description = "List of IPv6 cidr_blocks of private subnets in an IPv6 enabled VPC"
#   value       = module.vpc.private_subnets_ipv6_cidr_blocks
# }

# output "public_internet_gateway_ipv6_route_id" {
#   description = "ID of the IPv6 internet gateway route"
#   value       = module.vpc.public_internet_gateway_ipv6_route_id
# }

# output "public_internet_gateway_route_id" {
#   description = "ID of the internet gateway route"
#   value       = module.vpc.public_internet_gateway_route_id
# }

# output "public_network_acl_arn" {
#   description = "ARN of the public network ACL"
#   value       = module.vpc.public_network_acl_arn
# }

# output "public_network_acl_id" {
#   description = "ID of the public network ACL"
#   value       = module.vpc.public_network_acl_id
# }

# output "public_route_table_association_ids" {
#   description = "List of IDs of the public route table association"
#   value       = module.vpc.public_route_table_association_ids
# }

# output "public_route_table_ids" {
#   description = "List of IDs of public route tables"
#   value       = module.vpc.public_route_table_ids
# }

# output "public_subnet_arns" {
#   description = "List of ARNs of public subnets"
#   value       = module.vpc.public_subnet_arns
# }

# output "public_subnets" {
#   description = "List of IDs of public subnets"
#   value       = module.vpc.public_subnets
# }

# output "public_subnets_cidr_blocks" {
#   description = "List of cidr_blocks of public subnets"
#   value       = module.vpc.public_subnets_cidr_blocks
# }

# output "public_subnets_ipv6_cidr_blocks" {
#   description =

#CODEDEPLOY-OUTPUTS
# output "deployment_config_id" {
#   value = module.code-deploy.deployment_config_id
# }

# output "deployment_config_name" {
#   value = module.code-deploy.deployment_config_name
# }

# output "group_id" {
#   value = module.code-deploy.group_id
# }

# output "identifier_id" {
#   value = module.code-deploy.id
# }

# output "indentifier_name" {
#   value = module.code-deploy.name
# }
