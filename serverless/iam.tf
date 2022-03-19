###### Creation of an IAM Role for Lambda ######

resource "aws_iam_role" "iam_for_lambda" {
  name = var.role_name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}


###### Permissions to allow API Gateway to invoke Lambda #######

resource "aws_lambda_permission" "allow_apigw" {
  action        = "lambda:InvokeFunction"
  function_name = var.function_name
  principal     = "apigateway.amazonaws.com"
  # The /*/*/* part allows invocation from any stage, method and resource path within API Gateway REST API.
  source_arn = "${aws_api_gateway_rest_api.serverless.execution_arn}/*/*/*"
}