# Jenkins setup using Azure Cloud

## Steps:
1. Open the cloud shell & Create a VM & connect with VM through cloud shell then Upload the pem file into cloud shell

   Open the VM to get username & public-ip and run **chmod 400 jenkins-setup-practice_key.pem  &  ssh -i jenkins-setup-practice_key.pem azureuser@20.40.46.227** in cloudshell

   <img width="601" alt="image" src="https://github.com/user-attachments/assets/b1460df4-43fb-4998-bbe3-a2c4500e5530" />


2. Install Terraform, az client & Ansible
   https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
   https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html
   https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
   <img width="641" alt="image" src="https://github.com/user-attachments/assets/3f4e4526-618e-4341-ac13-5c607ba4fe7d" />
   
   <img width="814" alt="image" src="https://github.com/user-attachments/assets/ced6cf2c-2df1-4340-909d-5dc738c9efde" />


3. Create a instance using terraform
   
   <img width="598" alt="image" src="https://github.com/user-attachments/assets/7818e582-9498-4bbe-bde3-77c29fa8b5ed" />
   <img width="763" alt="image" src="https://github.com/user-attachments/assets/c2dad243-a51d-45e5-ba27-9eb83b79354f" />

5. Install jenkins & docker using ansible by updating your public ip in host.ini file
   <img width="916" alt="image" src="https://github.com/user-attachments/assets/2b874c25-8269-4910-a6c7-a68aabad9e22" />

   








