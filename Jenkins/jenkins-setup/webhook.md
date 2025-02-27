# Jenkins setup using Azure Cloud

## Steps:
1. Open the cloud shell & type "az login"
     <img width="944" alt="image" src="https://github.com/user-attachments/assets/10e42aa9-443c-4a99-97a0-0a09cf5c156a" />
     <img width="949" alt="image" src="https://github.com/user-attachments/assets/b57296b8-efd7-43e4-85c5-215dd2ea46cf" />

3. Create a VM & connect with VM through cloud shell
   a. Upload the pem file into cloud shell
   <img width="959" alt="image" src="https://github.com/user-attachments/assets/d7f852c4-c8fa-4bd7-a1c8-b40e2a92d966" />
   b. Open the VM to get username & public-ip and run **chmod 400 jenkins-setup-practice_key.pem  &  ssh -i jenkins-setup-practice_key.pem azureuser@20.40.46.227** in       cloudshell
   <img width="950" alt="image" src="https://github.com/user-attachments/assets/6dc2ad02-d4e2-4697-8091-0a98032b116b" />
   <img width="593" alt="image" src="https://github.com/user-attachments/assets/bacd8183-047f-49d7-b2f3-21ff5634feb3" />



