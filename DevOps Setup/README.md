**Install Jenkins in Kubernetes cluster using Google Cloud**
Steps:
1. Create a free trail account
2. Enable "Kubenetes Engine"
3. Create a Kubernetes Cluster
![Screenshot from 2024-10-19 11-56-55](https://github.com/user-attachments/assets/9cfd2b65-70fb-4a8b-bbe7-c5ec2793c881)
4. Connect to the cluster by select ":" -> connect -> either copy the gcloud command and paste in Gcloudcli or we can directly connect via CLI by selecting option "Run in cloud shell" and select "continue" or "Authorize" to connect with your project and the cluster
Once connected. Please check the kubectl status by running command "kubectl --help"
Pull the Jenkins image from Dockerhub by run command "docker pull jenkins/jenkins"
