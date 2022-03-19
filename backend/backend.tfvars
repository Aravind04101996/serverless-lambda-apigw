enable_replication                     = false
s3_bucket_name                         = "serverless-tf-state-bucket"
terraform_iam_policy_create            = false
application                            = "serverless"
kms_key_deletion_window_in_days        = 7
dynamodb_table_name                    = "tf-state-lock"