# Install Jenkins on K8s cluster with autoscaling enabled using minikube
   This method runs the jenkins instance on 3 pods each and distribute the load equally
   **NOTE:** For better practice, please create a namespace & follow the steps

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
8. Go to minikube node and change the permission to below path
   ```bash
   minikube ssh
   sudo mkdir -p /var/jenkins_home/secrets
   sudo chown -R 1000:1000 /var/jenkins_home/secrets
9. clone the repo using ssh & ran the all config files
    ```bash
    git clone git@github.com:GVAJK/Local-PipelineSetup.git
    cd Local-PipelineSetup
    minikube kubectl -- apply -f pv.yaml
    minikube kubectl -- apply -f pvc.yaml
    minikube kubectl -- apply -f deployment.yaml
    minikube kubectl -- apply -f service.yaml

10. Once ran all commands above, please validate by
    ```bash
    minikube kubectl -- get all
    minikube kubectl -- get pv
    minikube kubectl -- get pvc

11. If all objects/resources  fine. Please run command to get the url of jenkins instance
    | **Command 1** | **Command 2** |
    |------------------------------------------|---------------------------------------------------|
    | minikube service devops-setup-service    | minikube service devops-setup-service --url       |

12. To enable autoscaling
    ```bash
    minikube kubectl -- autoscale deployment <deploymentname> --cpu-percent=80 --min=3 --max=10
    ex:
    minikube kubectl -- autoscale deployment devops-setup-deployment --cpu-percent=80 --min=3 --max=10


## Other Useful Commands

   | **Commands** | **use** |
   |-----------------------------------------------------------------------|--------------------------|
   | minikube delete -all                                                  | To delete minikube       |
   | minikube kubectl -- get nodes                                         |        |
   | minikube kubectl -- create ns namespacename **ex:** kubectl create ns devops-test-env                                |       |
   | minikube kubectl -- exec -it podname -- /bin/bash **ex:** minikube kubectl -- exec -it devops-setup-deploy-0 -- /bin/bash  |       |

   
