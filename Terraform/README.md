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


