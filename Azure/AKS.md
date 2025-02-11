# Deploying small Web app into AKS

## Steps:
1. Created a Resource group & Ubuntu VM in Azure
<img width="944" alt="image" src="https://github.com/user-attachments/assets/48ef82cb-cc7f-491a-b787-e29ae1725c0d" />

2. Connected into VM & Installed git using commands below
sudo apt install git -y
sudo apt update
git --version

3. generated the ssh key pair using
ssh-keygen

4. Updated the pubkey into github -> profile -> settings ->ssh & gpg keys -> create new

5. Cloned the repo & created an AZure folder to track the steps , committed & push into Github repo
<img width="959" alt="image" src="https://github.com/user-attachments/assets/72cf3e7b-b787-43cc-8b64-10e39a61cd56" />

6. Created an AKS cluster by selecting
   <img width="679" alt="image" src="https://github.com/user-attachments/assets/7e66a2bb-f0bd-49bb-8384-61bc9a586092" />

7. created the node/nodepool as per my requirement orelse you can use minikube for practice
   <img width="953" alt="image" src="https://github.com/user-attachments/assets/906dd612-1014-4d7c-a652-26734c345e50" />

   <img width="896" alt="image" src="https://github.com/user-attachments/assets/8c07edb7-bb00-466c-af97-76269a92dc2d" />

   <img width="631" alt="image" src="https://github.com/user-attachments/assets/39c11a9e-0d57-4d63-85fd-7a500169a404" />


   In case any issue. Please use copilot to fix the issue. In my case, I updated the size od node from b2 to ds2
   <img width="959" alt="image" src="https://github.com/user-attachments/assets/2bb9275e-3c24-403d-a0b8-2d0673ddfe7e" />

8. To connect with cluster. Please select "connect" & open the cloud shell & run the recommeneded 2 commands
   <img width="943" alt="image" src="https://github.com/user-attachments/assets/e10f86f1-6a10-4dc2-bb65-3d784e82ba54" />
   <img width="446" alt="image" src="https://github.com/user-attachments/assets/e595a024-923e-436e-b549-171133919ebd" />

9. I am using the predefined public docker image which created by kodekloud team for practice
10. Create a deployment & svc. For Best practice always try to create objects with namespaces
    <img width="902" alt="image" src="https://github.com/user-attachments/assets/e6670a35-e8ec-4d80-9f9b-b5a8c94adce1" />
11. Exposing externally
    <img width="937" alt="image" src="https://github.com/user-attachments/assets/670e440d-11f1-46cc-b1b6-8e2a0420d791" />






