# Deploy a simple js frontend app into AKS into automation

1. Create a instance in AWS, then install ansible, terraform & AWS cli by referring below url
2.open the aws cloud shell & select "actions->upload file ex:test.pem"
3. run "scp -i ~/.ssh/practice.pem ./.ssh/practice.pem ubuntu@35.154.147.17:/home/ubuntu/" to upload an pem file into control/master server
4. run "ssh -i ./.ssh/practice.pem ubuntu@35.154.147.17" to connect with an instance
5. give access to your pem file by running "chmod 400 ./practice.pem"

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-ubuntu

To check, please run
1. aws --version
2. terraform --version
3. ansible --version

<img width="777" alt="image" src="https://github.com/user-attachments/assets/3c358aea-310f-4b49-b98b-c3520b77985d" />

<img width="947" alt="image" src="https://github.com/user-attachments/assets/784a37f1-e579-4c0a-a2fe-00a1f452e85f" />

<img width="601" alt="image" src="https://github.com/user-attachments/assets/07150284-c6a5-4f7e-80bf-5b3d590c809a" />

<img width="884" alt="image" src="https://github.com/user-attachments/assets/cc68c687-cf35-4911-8917-169256000c6f" />

<img width="755" alt="image" src="https://github.com/user-attachments/assets/413fdbbc-da05-484a-8913-02ec943acf97" />

<img width="946" alt="image" src="https://github.com/user-attachments/assets/c90402b9-017a-4fd8-8acb-1d07ab02307b" />

<img width="904" alt="image" src="https://github.com/user-attachments/assets/35c42dcb-e918-4d75-bd00-773acbed455c" />

<img width="564" alt="image" src="https://github.com/user-attachments/assets/90eaa06d-5e96-49d0-82f2-cb6b5a29a3ed" />

<img width="410" alt="image" src="https://github.com/user-attachments/assets/ce0ddc97-bd85-4b98-85ea-f14753cbe545" />


run "ansible -i ./host.ini -m ping linux" to check the connectivity of target server 



