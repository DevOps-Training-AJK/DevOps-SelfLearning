# Steps:
1. Created a VM in AWS and installed ansible ie vm1
   <img width="947" alt="image" src="https://github.com/user-attachments/assets/6dd23c60-ca7f-44e0-8ea2-0299287a015c" />
2. Created a new VM in AWS using terraform which going to configure ie vm2
   <img width="953" alt="image" src="https://github.com/user-attachments/assets/c1090702-b64a-4503-b9d7-5f82c9b164ef" />
3. Create a role using "ansible-galaxy role init <role name>" in Vm1
   <img width="926" alt="image" src="https://github.com/user-attachments/assets/1ec41d84-e318-4dc7-9ef9-a7e395706551" />
4. Updated the required configuration
   <img width="917" alt="image" src="https://github.com/user-attachments/assets/d1803572-9328-4db6-b707-17d00e8d418b" />
5. Updated pem file into target server ie vm2

   <img width="464" alt="image" src="https://github.com/user-attachments/assets/275ff752-4bc8-429a-a380-4667d9f7e5b6" />
7. Create an inventory file & playbook file
   <img width="957" alt="image" src="https://github.com/user-attachments/assets/406013b0-693d-4996-ac3a-b1e49a41afca" />
8.  checking connectivity of instance. go to root path of folder ans run "ansible -i ./host.ini -m ping all"
   <img width="949" alt="image" src="https://github.com/user-attachments/assets/101ce92a-8f31-4afb-b4fc-befff5ea342b" />
9. Once it fine. run "ansible-playbook -i ./host.ini ./ansible-playbook.yml"
   <img width="944" alt="image" src="https://github.com/user-attachments/assets/d7b6c9ab-f3ad-4db0-ad04-3736827cb4f1" />
10. Connect with VM2 and validate it
    <img width="952" alt="image" src="https://github.com/user-attachments/assets/81b9a71a-b545-4901-8506-b0c067fe8dfc" />





# Issues Faced:
1. <img width="818" alt="image" src="https://github.com/user-attachments/assets/fea7921a-5cd2-4f2e-be3a-0d8babfa9969" />
2. Faced issue while installing java
   <img width="937" alt="image" src="https://github.com/user-attachments/assets/bf456cc7-450d-48c1-9eec-eac80a4dc52c" />





