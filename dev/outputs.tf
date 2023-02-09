/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:548286011133:environment/dev

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.vpc[0].id
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = aws_vpc.vpc[0].arn
}