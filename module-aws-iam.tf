module "iam" {
  source  = "terraform-aws-modules/iam/aws"
  version = "5.39.1"

}

module "iam_policy" {
  source = "terraform-aws-modules/iam/aws//modules/iam-policy"

  name        = "Role_for_Terraform_s3"
  path        = "/"
  description = "My Terraform S3 policy"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "s3:*",
                "s3-object-lambda:*"
            ],
            "Resource": "*"
        }
    ]
}
EOF
}
