######### Setting up Remote State Backend ########
######### S3 - State File Storage ########
######### Dynamo DB - State File Locking #######

module "remote_state" {
  source = "nozaq/remote-state-s3-backend/aws"

  version = ">=1.1.0"

  override_s3_bucket_name         = true
  s3_bucket_name                  = var.s3_bucket_name
  terraform_iam_policy_create     = var.terraform_iam_policy_create
  kms_key_deletion_window_in_days = var.kms_key_deletion_window_in_days
  enable_replication              = var.enable_replication
  dynamodb_table_name             = var.dynamodb_table_name

  providers = {
    aws         = aws
    aws.replica = aws.replica
  }
  
  tags = {
    Application = var.application
    terraform   = true
  }
}