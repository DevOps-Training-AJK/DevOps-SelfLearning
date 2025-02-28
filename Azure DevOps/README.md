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

4.  Let add a new VM as agent pool in ADO
    a.  Go to project settings -> Agent pool -> Add pool -> select "new" & "self hosted" -> give name of pool & enable checkbox if want to use this agent across all pipelines
    <img width="735" alt="image" src="https://github.com/user-attachments/assets/4bf14d3c-e884-4f5a-893d-12e190a8b996" />
    <img width="721" alt="image" src="https://github.com/user-attachments/assets/ef6aa161-1111-4bdf-9893-3bf689ba4946" />

    b.  Select your pool name "ado-setup" -> new agent -> select OS. In my case. I am using "linux". Follow the instructions as it shown. Before executing this. Please create a token by user settings -> personal access token -> create
    <img width="816" alt="image" src="https://github.com/user-attachments/assets/8d6b86c0-9372-4a58-8167-8f70b6607f4b" />
    <img width="731" alt="image" src="https://github.com/user-attachments/assets/a95d7490-9fbb-41e3-8a28-8bb00a34ef7e" />

5. Add Sonarqube & Docker in ADO
   a.  To configure docker. Go to project settings -> service connections -> create service connections -> type "docker registry" -> update "username, password & service name" -> verify & save
   <img width="710" alt="image" src="https://github.com/user-attachments/assets/00939e57-2179-4509-9a3b-b2a5181148d0" />
   b. To configure sonarqube
     1.  Create a sonarqube instance. Go to our cloudshell & connect with our test VM & install docker
         <img width="292" alt="image" src="https://github.com/user-attachments/assets/946a27a8-63a8-4140-9f0b-0612c60b1156" />
     2.   To run sonarqube through docker. Please run following command "docker run --name sonarqube -d -p 9000:9000 sonarqube:10.6-community"
          <img width="944" alt="image" src="https://github.com/user-attachments/assets/8f1be25b-bf80-4d3c-be4b-a88139d8cbbc" />
          <img width="954" alt="image" src="https://github.com/user-attachments/assets/bbe2cbc7-a3eb-47a4-ba87-8b6716812fb9" />
     3. Try Username: admin & password: admin by default & customize your own password. select "import from azure dveops" -> update your organization url & PAT -> save
        <img width="959" alt="image" src="https://github.com/user-attachments/assets/18a876a2-a65b-4c0d-b58d-fbb6a35e425d" />

     4. Go to profile -> myaccount -> security -> Generate your token from sonarqube
     5. Go to ulr https://marketplace.visualstudio.com/items?itemName=SonarSource.sonarqube and select > Get it free -> choose your organization -> select install -> Proceed to organization
        <img width="919" alt="image" src="https://github.com/user-attachments/assets/640ae942-79f1-4b89-9f99-6e5442c35661" />
        ### NOTE: Please sign with same crednetial in marketplace
   6. In ADO, Go to project settings -> service connections -> sonarqube server -> update the url & token -> click "save"
      <img width="722" alt="image" src="https://github.com/user-attachments/assets/072a167b-09ec-4e11-a8ff-65bde75f6915" />


   ## Lets create a pipleine
   1. Go to the Azure repo -> select "set up build" -> starter pipeline -> show assistant -> select the required one & update the pipeline -> select "save" -> run the pipeline
      <img width="959" alt="image" src="https://github.com/user-attachments/assets/fc8c2ed7-9ea6-4d79-a594-c80309b340f5" />
      <img width="950" alt="image" src="https://github.com/user-attachments/assets/789133b3-5d5a-44af-8aab-6513c5883cde" />
      <img width="942" alt="image" src="https://github.com/user-attachments/assets/7a42f68e-b88d-4566-951d-30700eaee9da" />

# lets deploy into EKS
   1.   Create a EKS cluster in AWS. Please find the procedure in below url
         https://github.com/DevOps-Training-AJK/DevOps-SelfLearning/blob/main/DevOps%20Setup/AWS/README.md

   2. Once cluster created along with node pool based on requiremen. In my case, i used only 1 node alone
      <img width="959" alt="image" src="https://github.com/user-attachments/assets/dece36ec-0b0d-431e-bec5-24ba7974c02f" />
      <img width="728" alt="image" src="https://github.com/user-attachments/assets/e40c5c95-6ef1-4d52-bd71-f2cc5ab4ee50" />

   3. Install "AWS toolkit" plugin
      https://marketplace.visualstudio.com/items?itemName=AmazonWebServices.aws-vsts-tools

   4.   Go to service connections -> search "aws" -> update access & secret key -> enable OIDC checkbox
   5.   Run the pipeline


          



   



   



   



# Working in progress........
