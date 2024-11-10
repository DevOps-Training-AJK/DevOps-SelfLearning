# Install Jenkins on K8s cluster with autoscaling enabled

## Steps:

1. Create a VM in your local machine using VirtualBox (Ubuntu). For that, please refer to the following:
   [VM Creation steps](https://github.com/DevOps-Training-AJK/DevOps-SelfLearning/blob/main/Virtualization/README.md)

2. Add APT repo & Install Docker Engine & Docker CLI.
   [Docker Installation](https://docs.docker.com/engine/install/ubuntu/)

3. To Validate run command:
   ```bash
   docker --version

4. Once docker was installed. Please run
   ```bash
   sudo usermod -aG docker $USER && newgrp docker

5. Pull the jenkins docker image
   ```bash
   docker pull jenkins/jenkins:latest

6. Install Minikube in a VM to create a K8s Cluster by referring its official doc
   [Minikube Installation](https://minikube.sigs.k8s.io/docs/start/?arch=%2Flinux%2Fx86-64%2Fstable%2Fbinary+download)
   To start minikube, please run command:
   ```bash
   minikube start --driver=<hypervisor>
   For Ex:   minikube start --driver=docker

6. To validate minikube
   ```bash
   minikube status

7. To View the K8s dashboard.
   ```bash
   minikube dashboard
8. 
   
