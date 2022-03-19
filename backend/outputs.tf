output "state_bucket" {
  description = "The S3 bucket to store the remote state file."
  value       = module.remote_state.state_bucket.bucket
}

output "dynamodb_table" {
  description = "The DynamoDB table to manage lock states."
  value       = module.remote_state.dynamodb_table.name
}

output "kms_key_id" {
  description = "The KMS customer master key to encrypt state buckets."
  value       = module.remote_state.kms_key.id
}