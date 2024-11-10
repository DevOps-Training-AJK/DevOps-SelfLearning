# Install Jenkins on K8s cluster with autoscaling enable
## Steps:
1. Create a VM in local machine using virtualbox(Ubuntu). For that, please refer below
   [VM Creation steps](https://github.com/DevOps-Training-AJK/DevOps-SelfLearning/blob/main/Virtualization/README.md)
2. Install Docker Engine & Docker Cli
   [Docker Installation](https://docs.docker.com/engine/install/ubuntu/)
   ### Commands:
   ***a. Add APT repository***
   ```bash
   # Add Docker's official GPG key:
  sudo apt-get update
  sudo apt-get install ca-certificates curl
  sudo install -m 0755 -d /etc/apt/keyrings
  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
  sudo chmod a+r /etc/apt/keyrings/docker.asc
  echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update```
  
  **b. Install Docker Packages***
  ```bash
  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin```

3. To validate Docker installation:
  ```bash
  docker --version bash```

4. Pull the Jenkins docker image version
  ```bash
  docker pull jenkins/jenkins```

5. To validate the Image. Please run
  ```bash
  docker images```
   
