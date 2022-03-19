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
- serverless/*
	- Creation of Lambda Function, API Gateway components (Rest API, Resources, Methods and Integrations), IAM Roles and permissions.
```
### Step by Step Guide - Implementation

(0) Clone the repository.
```bash
$ git clone git@github.com:Aravind04101996/serverless-lambda-apigw.git
$ cd serverless-lambda-apigw
```

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

 (4) Update backend configuration in serverless componen. If you do not make any changes in backend.tfvars in step(3), skip this step.
```bash
cd serverless
Update bucket name, dynamodb table name, region parameters with appropirate values in backend.tf 
```


 (5) Deploy Serverless Component
 ```bash
 cd serverless
 terraform init
 terraform plan --var-file="serverless.tfvars"
 terraform apply --var-file="serverless.tfvars" --auto-approve
 ```

 (6) Testing API Gateway + Lambda Integration

 Get API Gateway Stage Invoke URL from output variable `apigw_stage_invoke_url`. Go to browser, invoke the url `http://<<APIGW_STAGE_INVOKE_URL>>/serverless`, you will get "Hello from Lambda" response. <br/>