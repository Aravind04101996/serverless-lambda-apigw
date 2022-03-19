####### Lambda Related Variables #######

variable "function_name" {
  description = "Name of the Lambda Function"
  type        = string
}

variable "filename" {
  description = "Path to the function's deployment package within the local filesystem"
  type        = string
}

variable "runtime" {
  description = "Identifier of the function's runtime"
  type        = string
}

variable "handler" {
  description = "Function Entrypoint"
  type        = string
}

variable "timeout" {
  description = "Amount of time your Lambda Function has to run in seconds"
  type        = number
  default     = 90
}

variable "role_name" {
  description = "Name of an IAM role created for Lambda"
  type        = string
}

variable "application" {
  description = "Name of application"
  type        = string
}

variable "region" {
  type        = string
  description = "default region to store terraform state"
}

####### API Gateway Related Variables #######

variable "rest_api_name" {
  description = "Name of the rest api"
  type        = string
}

variable "rest_api_type" {
  description = "A list of endpoint types. Valid values: EDGE, REGIONAL or PRIVATE"
  type        = list(any)
  default     = ["REGIONAL"]
}

variable "path_part" {
  description = "The last path segment of this API resource."
  type        = string
}

variable "http_method" {
  description = "The HTTP Method (GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY)"
  type        = string
  default     = "ANY"
}

variable "authorization" {
  description = "The type of authorization used for the method (NONE, CUSTOM, AWS_IAM, COGNITO_USER_POOLS)"
  type        = string
  default     = "NONE"
}

variable "integration_http_method" {
  description = "The integration HTTP method (GET, POST, PUT, DELETE, HEAD, OPTIONs, ANY, PATCH) specifying how API Gateway will interact with the back end. Required if type is AWS, AWS_PROXY, HTTP or HTTP_PROXY."
  type        = string
  default     = "POST"
}

variable "type" {
  description = "The integration input's type."
  type        = string
  default     = "AWS_PROXY" #for Lambda proxy integration
}

variable "stage_name" {
  description = "Name of API Gateway Stage"
  type        = string
}