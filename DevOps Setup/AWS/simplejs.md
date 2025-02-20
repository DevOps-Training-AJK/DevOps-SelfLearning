# Deploy a simple js frontend app into EKS through automation

## NOTE: Since i don't git due to organization restriction. I created a ubuntu VM in EC2

1. Create a instance in AWS (deny all outbound rules in SG), then install ansible & terraform
   
<img width="944" alt="image" src="https://github.com/user-attachments/assets/d9236fc4-bdc4-41df-88ba-971753ffbb66" />

### NOTE: Since, I love to use cloud shell instead of connect VM directly. So it's mandatory to follow below steps. Otherwise you can ignore it step upto 5. If you are following below steps. Please update the ip-address with yours

2. open the aws cloud shell & select "actions->upload file to upload "practice.pem". In my case, I created a folder called .ssh & uploaded the pem file within .ssh folder. You can create your own folder & paste the pem file into it
3. run "scp -i ~/.ssh/practice.pem ./practice.pem ubuntu@3.7.71.223:/home/ubuntu/" to upload an pem file into control/master server
4. give access to your pem file by running "chmod 400 ./practice.pem"
5. run "ssh -i ./.ssh/practice.pem ubuntu@3.7.71.223" to connect with an instance

<img width="924" alt="image" src="https://github.com/user-attachments/assets/d6725c16-c9e9-4296-ba4c-567e3b2843fc" />
<img width="360" alt="image" src="https://github.com/user-attachments/assets/3d1c1693-3576-4c97-93ae-04c36648a5ab" />

Once connect into VM either through cloudhsell/git/direct connect into vm. Please follow the instruction as per below pages & install terraform & ansible

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

To check, please run
1. terraform --version
2. ansible --version

<img width="934" alt="image" src="https://github.com/user-attachments/assets/ef86df79-2f9a-400c-9782-4b3fddac29da" />

Once both installed successfully. Please generate key pairs using command "ssh-keygen" & update your public key into your repository (Profile -> settings -> GPG & SSH keys -> create key). Please make sure no extra space exist in public key while updating

<img width="528" alt="image" src="https://github.com/user-attachments/assets/e0d62256-11cb-43b0-be10-10d68fbac32f" />

<img width="720" alt="image" src="https://github.com/user-attachments/assets/590a14cb-01ee-4d0e-bf80-a8d2372221bb" />

6. Clone the repo using ssh clone url.
7. Once repo cloned successfully. Go to path "cd DevOps-SelfLearning/DevOps\ Setup/AWS/"
   <img width="512" alt="image" src="https://github.com/user-attachments/assets/ad73ff5d-ff4b-4b0e-b104-343bad184340" />



run "ansible -i ./host.ini -m ping linux" to check the connectivity of target server 
once connectivity success. Please run "ansible-playbook -i ./host.ini ./ansible_simplejs.yml"



# Working in-progres.......



