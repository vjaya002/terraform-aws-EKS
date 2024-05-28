variable "s3_backend" {
  description = "Helps in storing the state in the bucket"
  type        = string
}
variable "s3_key" {
  description = "Helps in storing the state in the bucket if you want to a particular folder directory"
  type        = string
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
