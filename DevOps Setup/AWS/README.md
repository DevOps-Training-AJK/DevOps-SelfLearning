# Deploy a simple js frontend app into EKS through automation

#### NOTE: 
#### 1. Since i don't have git installed due to organization restriction. I created a ubuntu VM in EC2 as IAM user
#### 2. This is just a simple setup. If want to fetch the code from Github automatically using webhook instead of directly updating jenkinsfile in pipeline job itself & integrate sonarqube into Jenkins. Please refer below url.
[Jenkins Setup](https://github.com/DevOps-Training-AJK/DevOps-SelfLearning/blob/main/Jenkins/jenkins-setup/webhook.md)

## Steps:

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

# Lets create a VM using terraform

8. run "nano *.tf" or use "vi or vim" and update your access & secret key. press "ctrl+o" then "ctrl+x"
9. Now run "terraform init", "terraform plan". Once there is no error message. Please try "terraform apply"
   #### NOTE: Don't forgot to update you access & secret key (which isn't a best practice. It's for just practice). If you going to add key. Please update with your respective .pem file name
   To get access & secret key. Go to AWS UI -> profile -> security credentials -> scroll down & select "create access key"

<img width="433" alt="image" src="https://github.com/user-attachments/assets/c5010fbd-a6c6-4fa8-8085-2d0e55182c32" />

<img width="774" alt="image" src="https://github.com/user-attachments/assets/a7ef9f27-b6d3-4acc-be4e-b9a53ed70238" />

<img width="758" alt="image" src="https://github.com/user-attachments/assets/5b71656a-17f7-4ba0-8331-397e2722a7c2" />

<img width="701" alt="image" src="https://github.com/user-attachments/assets/b23a81b8-8d43-46d7-9a1c-9ecc21805717" />

<img width="779" alt="image" src="https://github.com/user-attachments/assets/7e4e7c0e-b2a5-4586-b62a-0798a760e856" />


# Lets install jenkins, Docker & AWS cli using ansible in VM which created by Ansible

10. Please update you ip-address & your .pemfile path in host.ini file
<img width="505" alt="image" src="https://github.com/user-attachments/assets/f1c5d49c-bfc3-4c87-a43a-4fb7cb9033c3" />


11. run "ansible -i ./host.ini -m ping linux" to check the connectivity of target server 
once connectivity success. Please run "ansible-playbook -i ./host.ini ./ansible_simplejs.yml"
#### NOTE: If you are facing connectivity due to permission issue. Please run "chmod 600 practice.pem" 

<img width="914" alt="image" src="https://github.com/user-attachments/assets/15714e80-87da-4644-b649-df7bcf8f3864" />

<img width="915" alt="image" src="https://github.com/user-attachments/assets/e9e5e469-58e2-488d-90cc-067aed4f5986" />

To verify. Please connect with target server and run
1. docker --version
2. aws --version
3. jenkins --version

<img width="401" alt="image" src="https://github.com/user-attachments/assets/77f444f2-a8d8-433f-8d69-4a99c9d0a931" />

# Build an Docker image using Jenkins

12. Try to access url "<pub ip>:8080" ex: http://13.201.57.38:8080/
<img width="939" alt="image" src="https://github.com/user-attachments/assets/c00adc16-6527-4379-b3d0-f3e9ce4f0a38" />

13. Go to target server & run "sudo cat /var/lib/jenkins/secrets/initialAdminPassword"
<img width="503" alt="image" src="https://github.com/user-attachments/assets/6cf6c050-064d-4452-b1c5-a09121d07c56" />

14. Once updated password -> select "next" -> "install suggested plugins" -> provide "username & password" -> select "save & continue" -> select "save & finish" -> select "start using jenkins"

15. Once instance start running. Update the docker credentials. For that, go to path jenkinsdashboard -> manage jenkins -> credential -> select "global" at Stores scoped to Jenkins -> select "Add credentials" -> provide "username & password" & save
<img width="959" alt="image" src="https://github.com/user-attachments/assets/732f9e7b-809b-4689-bf37-be431cff0d8c" />

16. Need to install mandatory plugins. To achieve that, please go to "Dahsboard -> manage jenkins -> plugins -> available plugins -> install "docker & docker pipleine" -> restart the instance by running "sudo systemctl restart jenkins" in your target server or select select the checkbox for auto restart

<img width="645" alt="image" src="https://github.com/user-attachments/assets/aaf4f912-08bc-4353-bceb-706d70ff20b6" />

17. Create a pipeline job. Dashboard -> Newitem -> select "pipeline" -> name of pipeline -> ok -> go to "pipeline" section copy the jenkinsfile content which exist in our repo & paste it like below -> save -> build now

<img width="943" alt="image" src="https://github.com/user-attachments/assets/2a68bbb2-edaa-47c9-ad36-83483ec793ec" />

18. Now it creates the image & push it into my dockerhub account
<img width="939" alt="image" src="https://github.com/user-attachments/assets/9f17089f-3a0f-4b74-a7a0-d0d233b103e4" />
<img width="944" alt="image" src="https://github.com/user-attachments/assets/b80af39a-2969-444f-868d-a5fb54d96099" />


# Lets Deploy our image into EKS

19. Create an EKS cluster in AWS
search "Elastic Kubernetes service" -> create cluster ->go with "auto mode" or "custom" ->create required role for node & cluster -> create.
#### NOTE: Based on requirement. Either we can create a cluster in same VPC or use different VPC
In my case, I used custom configuration with below roles permission & 1 node configuration in node pool
## For Cluster IAM role
<img width="703" alt="image" src="https://github.com/user-attachments/assets/3d0d8b40-7cf5-4602-b13c-55924f2fbd90" />

## For Node IAM role
<img width="695" alt="image" src="https://github.com/user-attachments/assets/d9ef459e-d4f4-48b1-8ba5-4c061c6e1589" />

## For Node group
<img width="946" alt="image" src="https://github.com/user-attachments/assets/b4a4f036-d420-4ba2-8bc2-34e8c8c44df9" />



## Once Cluster was created successfully. Please trigger the jenkins job. It'll automatically build a package & deployed into kubernetes & will expose it externally

# OUTPUT:

1. [jenkins-output.txt](https://github.com/user-attachments/files/19002724/jenkins-output.txt)
2. <img width="956" alt="image" src="https://github.com/user-attachments/assets/77e613d3-af36-4e71-ae72-c1515e46f192" />
3. <img width="955" alt="image" src="https://github.com/user-attachments/assets/47dea4a7-cd91-4ac6-b42e-6005d2ecf523" />
4. <img width="959" alt="image" src="https://github.com/user-attachments/assets/3950b345-5e25-42bf-b252-0d730a818d8a" />
5. <img width="959" alt="image" src="https://github.com/user-attachments/assets/298c190c-988e-46dc-9ab8-51d6dbf49caa" />
6. <img width="959" alt="image" src="https://github.com/user-attachments/assets/18d4dd7e-6798-4677-876f-42c0c8095fc0" />
7. <img width="959" alt="image" src="https://github.com/user-attachments/assets/98eb3e1a-f646-401a-8f89-9ef5152a94cc" />













    
# Issues Faced:
1. I forgot to add a command in "sudo ./aws/install" in playbook
<img width="413" alt="image" src="https://github.com/user-attachments/assets/fda23bc4-4ca2-4954-a4c5-4b8b152c3c00" />

#### solution: Added the command in playbook & executed "ansible-playbook -i ./host.ini ./ansible_simplejs.yml"


2. Can't able to access the jenkins instance due to inbound config issue in terraform file
#### solution: Updated the inbound config in .tf file. and ran "terraform plan" & "terraform apply" again

