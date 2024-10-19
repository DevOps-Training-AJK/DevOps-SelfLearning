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
I am using "default" as my namespace. If required we create a namespace "kubectl create ns devops-setup" and 
1. Create a deployment "kubectl create deployment devops-setup-test --image=jenkins/jenkins -n default"
![Screenshot from 2024-10-19 12-40-21](https://github.com/user-attachments/assets/59e57924-79f1-4ace-89d7-602a4588b0bc)
2. Increase the pods through replicaset for more availability "kubectl scale deployment devops-setup-test --replicas=2 -n default"
![Screenshot from 2024-10-19 12-50-19](https://github.com/user-attachments/assets/7a3091aa-30aa-45d3-af07-4a431aa5308b)
3. Create service & expose it into outside 
kubectl expose deployment devops-setup-test --name=devops-setup-test-svc --type=LoadBalancer --port=8080
4. Once got External IP(kubectl get svc -n default). Please try to access via chrome
![Screenshot from 2024-10-19 13-04-33](https://github.com/user-attachments/assets/30f38bf5-d16f-4b36-a0e1-fd507e7b9a65)
![Screenshot from 2024-10-19 13-04-53](https://github.com/user-attachments/assets/cd318839-7533-4f11-b3c9-258e665a85b9)

