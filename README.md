# serverless-lambda-apigw
### Overview

- A Simple Serverless Application using Lambda and API Gateway
- Flow:
    - User hits API Gateway End Point.
    - API Gateway triggers Lambda when it receives a hit from User.
    - Lambda receives the request from API Gateway and returns "Hello World" message as a response.
    - API Gateway receives the response from Lambda and present it to User. 


### Pre-requisites 

- An AWS Account 
- IAM user credentials (Secret Key & Access Key )
- Terraform (version >= 1.1.7)

### Repository Information
```
- backend/*
    - Creation of S3 bucket for state files storage, Dynamo DB for state locking.
```
### Step by Step Guide - Implementation

(1) Export AWS Credentials (Secret Key & Access Key )
```bash
 $ export AWS_ACCESS_KEY_ID="<< YOUR ACCESS KEY >>"
 $ export AWS_SECRET_ACCESS_KEY="<< YOUR SECRET ACCESS KEY>>"
 ```

 (2) Export AWS Region 
 ```bash
 export TF_VAR_region=((REGION_TO_DEPLOY))
```

 (3) Deploy Backend Component
 ```bash
 cd backend
 terraform init
 terraform plan --var-file="backend.tfvars"
 terraform apply --var-file="backend.tfvars" --auto-approve
 ```

 (4) Deploy Serverless Component
 ```bash
 cd serverless
 terraform init
 terraform plan --var-file="serverless.tfvars"
 terraform apply --var-file="serverless.tfvars" --auto-approve
 ```