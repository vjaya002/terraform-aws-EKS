#https://registry.terraform.io/modules/terraform-aws-modules/s3-bucket/aws/latest

module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "4.1.0"

  bucket = "my-s3-bucket-${random_uuid.uuid.result}"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
  tags = {
    created-by     = "Terraform"
    module-version = "4.1.0"

  }
}
