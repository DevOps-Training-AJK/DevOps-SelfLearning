1. Imported an existing repo from Github to Azure repo
  <img width="959" alt="image" src="https://github.com/user-attachments/assets/a738b97d-d87a-47c7-9178-008dd67609b4" />
  <img width="953" alt="image" src="https://github.com/user-attachments/assets/9be411d1-10ed-4e39-9011-4228392e8980" />


2. Created a VM through EC2 and installed terraform & ansible

   To know about installation steps. Please refer below url

   https://github.com/DevOps-Training-AJK/DevOps-SelfLearning/blob/main/DevOps%20Setup/AWS/README.md

   <img width="625" alt="image" src="https://github.com/user-attachments/assets/f6331d18-b6b9-4b58-80ef-dc89fb2acaf1" />


3. Generate keypairs & update in ADO
   a.  Go to VM & run "**ssh-keygen -t rsa-sha2-512**" & copy the public key
   b.  Update the public key in ADO through user settings from organization -> ssh public keys -> new key
   <img width="911" alt="image" src="https://github.com/user-attachments/assets/3eee4e41-57ca-4fd9-8c74-54b3c1078de6" />
   <img width="949" alt="image" src="https://github.com/user-attachments/assets/9cc1f772-b56c-4c13-81b8-7b7b50cbb557" />

   c.  clone the repo git@ssh.dev.azure.com:v3/ajithkv980561/DevOps-Setup/configfiles
   d.  Place made the required changes in .tf file like instance type, keypair, etc.., & Run "**terraform init**", "**terraform apply**" & "**terraform apply**"
   <img width="451" alt="image" src="https://github.com/user-attachments/assets/21e733e3-4db9-4024-a76e-920df949e8ba" />
   <img width="760" alt="image" src="https://github.com/user-attachments/assets/05789ad2-7f30-4ecf-be3c-ce232750ad0f" />

   e.  Once Instance created. Please run "**ansible-playbook -i ./host.ini ./ansible.yml**"
   <img width="911" alt="image" src="https://github.com/user-attachments/assets/573d23af-d010-47b2-beee-bbe948fffbe5" />
   <img width="574" alt="image" src="https://github.com/user-attachments/assets/a41194ac-2cea-4073-af81-25982d165421" />

3.  Let add a new VM as agent pool in ADO

   



   



# Working in progress........
