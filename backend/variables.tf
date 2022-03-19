###### S3 Bucket related variables ######

variable "region" {
  type        = string
  description = "default region to store terraform state"
}

variable "enable_replication" {
  description = "Set this to true to enable S3 bucket replication in another region"
  type        = bool
}

variable "s3_bucket_name" {
  type        = string
  description = "s3 bucket name to store terraform state"
}

variable "terraform_iam_policy_create" {
  type        = bool
  description = "Whether to create IAM policy to grant permissions to backend components"

}

variable "application" {
  description = "Name of application"
  type        = string
}

variable "kms_key_deletion_window_in_days" {
  description = "Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days."
  type        = number
}

##### Dynamo DB Table related variables #####

variable "dynamodb_table_name" {
  type        = string
  description = "The name of the DynamoDB table to use for state locking"
}