## Setup - 1
Simple terraform setup. Please refer the below url:

https://github.com/DevOps-Training-AJK/DevOps-SelfLearning/tree/main/DevOps%20Setup/AWS

## Setup - 2
Install Terraform in Ubuntu using below url:
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

mkdir terraform
cd terraform

create a access & secret key in AWS
profile -> security credentials -> create access key -> fill required details -> Download .csv file

export AWS_ACCESS_KEY_ID="YOUR_ACCESS_KEY"
export AWS_SECRET_ACCESS_KEY="YOUR_SECRET_KEY"

provider "aws" {
  region     = "us-west-2"
  access_key = env.AWS_ACCESS_KEY_ID
  secret_key = env.AWS_SECRET_ACCESS_KEY
}

<img width="960" alt="image" src="https://github.com/user-attachments/assets/14b1acef-499c-425c-9bba-94cc216e2685" />


<img width="948" alt="image" src="https://github.com/user-attachments/assets/e3639d6a-0aed-4420-9b0a-0abf1c8f89e9" />


terraform destroy --target=aws_instance.terraform-test-create-instance

