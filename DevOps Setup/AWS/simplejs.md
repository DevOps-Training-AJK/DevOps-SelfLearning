# Deploy a simple js frontend app into EKS through automation

## NOTE: Since i don't git due to organization restriction. I created a ubuntu VM in EC2

1. Create a instance in AWS (deny all outbound rules in SG), then install ansible & terraform by referring below url
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

### NOTE: Since, I love to use cloud shell instead of connect VM directly. So it's mandatory to follow below steps. Otherwise you can ignore it step upto 5. If you are following below steps. Please update the ip-address with yours

2. open the aws cloud shell & select "actions->upload file to upload "practice.pem"
3. run "scp -i ~/.ssh/practice.pem ./.ssh/practice.pem ubuntu@3.7.71.223:/home/ubuntu/" to upload an pem file into control/master server
4. run "ssh -i ./.ssh/practice.pem ubuntu@3.7.71.223" to connect with an instance
5. give access to your pem file by running "chmod 400 ./practice.pem"

To check, please run
1. terraform --version
2. ansible --version

<img width="944" alt="image" src="https://github.com/user-attachments/assets/d9236fc4-bdc4-41df-88ba-971753ffbb66" />

<img width="947" alt="image" src="https://github.com/user-attachments/assets/784a37f1-e579-4c0a-a2fe-00a1f452e85f" />

<img width="601" alt="image" src="https://github.com/user-attachments/assets/07150284-c6a5-4f7e-80bf-5b3d590c809a" />

<img width="884" alt="image" src="https://github.com/user-attachments/assets/cc68c687-cf35-4911-8917-169256000c6f" />

<img width="593" alt="image" src="https://github.com/user-attachments/assets/f7952738-21e4-4ab5-801f-3e0372547d1b" />

<img width="776" alt="image" src="https://github.com/user-attachments/assets/c3b4b20e-e06b-45c3-8b38-3b3b9c28ecad" />

<img width="904" alt="image" src="https://github.com/user-attachments/assets/35c42dcb-e918-4d75-bd00-773acbed455c" />

<img width="564" alt="image" src="https://github.com/user-attachments/assets/90eaa06d-5e96-49d0-82f2-cb6b5a29a3ed" />

<img width="410" alt="image" src="https://github.com/user-attachments/assets/ce0ddc97-bd85-4b98-85ea-f14753cbe545" />


run "ansible -i ./host.ini -m ping linux" to check the connectivity of target server 
once connectivity success. Please run "ansible-playbook -i ./host.ini ./ansible_simplejs.yml"



# Working in-progres.......



