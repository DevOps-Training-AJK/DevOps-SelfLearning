# Install Jenkins on K8s cluster with autoscaling enabled

## Steps:

1. Create a VM in your local machine using VirtualBox (Ubuntu). For that, please refer to the following:
   [VM Creation steps](https://github.com/DevOps-Training-AJK/DevOps-SelfLearning/blob/main/Virtualization/README.md)

2. Add APT repo & Install Docker Engine & Docker CLI.
   [Docker Installation](https://docs.docker.com/engine/install/ubuntu/)

3. To Validate run command:
   ```bash
   docker --version

4. Pull the jenkins docker image
   ```bash
   docker pull jenkins/jenkins:latest

5. Install Minikube in a VM to create a K8s Cluster by referring its official doc
   [Minikube Installation](https://minikube.sigs.k8s.io/docs/start/?arch=%2Flinux%2Fx86-64%2Fstable%2Fbinary+download)
   
