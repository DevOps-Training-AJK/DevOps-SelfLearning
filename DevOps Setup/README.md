**Install Jenkins in Kubernetes cluster using Google Cloud**
Steps:
1. Create a free trail account
2. Enable "Kubenetes Engine"
3. Create a Kubernetes Cluster
![Screenshot from 2024-10-19 11-56-55](https://github.com/user-attachments/assets/9cfd2b65-70fb-4a8b-bbe7-c5ec2793c881)
4. Connect to the cluster by select ":" -> connect -> either copy the gcloud command and paste in Gcloudcli or we can directly connect via CLI by selecting option "Run in cloud shell" and select "continue" or "Authorize" to connect with your project and the cluster
Once connected. Please check the kubectl status by running command "kubectl --help"
Pull the Jenkins image from Dockerhub by run command "docker pull jenkins/jenkins"
![Screenshot from 2024-10-19 12-06-22](https://github.com/user-attachments/assets/00ba0dd6-6b64-4a4d-8a48-19d4afbe6abe)
Check the status of image by "docker images"
![Screenshot from 2024-10-19 12-16-22](https://github.com/user-attachments/assets/b6fe4795-9866-4e9e-b1e9-02ff1eac08d6)
Once Image pulled successfully. Lets deploy that image into Kubenetes
1. Create a deployment "kubectl create deployment devops-setup-test --image=jenkins/jenkins"
![Screenshot from 2024-10-19 12-40-21](https://github.com/user-attachments/assets/59e57924-79f1-4ace-89d7-602a4588b0bc)
