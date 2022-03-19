###### Lambda related variables #######

function_name = "serverless-hello-world"
filename      = "lambda_function.zip"
runtime       = "python3.9"
handler       = "lambda_function.lambda_handler"
application   = "serverless"
role_name     = "serverless-iam-role"


###### API Gateway related variables #######

rest_api_name = "serverless-api"
path_part     = "serverless"
stage_name    = "serverless"