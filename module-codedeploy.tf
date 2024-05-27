# #https://registry.terraform.io/modules/cloudposse/code-deploy/aws/latest
# module "code-deploy" {
#   source  = "cloudposse/code-deploy/aws"
#   version = "0.2.3"
#   # insert the 21 required variables here

#   additional_tag_map = {

#   }

#   attributes = []

#   auto_rollback_configuration_events = "DEPLOYMENT_FAILURE"

#   alarm_configuration = null
#   name                = "my-code-deploy"

#   create_default_service_role = true

#   create_default_sns_topic = true

#   compute_platform = "Server"

#   deployment_style = {
#     deployment_option = "WITHOUT_TRAFFIC_CONTROL"
#     deployment_type   = "IN_PLACE"

#   }
#   id_length_limit = 6

#   environment = "dev"

#   minimum_healthy_hosts = {
#     type  = "HOST_COUNT"
#     value = 1
#   }

# }
