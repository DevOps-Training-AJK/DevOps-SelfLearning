**What is Docker?**

Before get into docker, we must need to know what is container?

**Container** – It’s act as a host for your application runs on isolated environment. It contains system libraries, system file system, app libraries, app dependencies, etc..,

**Docker** – It’s a platform which helps to create a container. It enables the life-cycle of containers ie create, delete, deploy, etc..,

**Advantages of Container:**
1. Isolation and Lightweight: Containers run in isolation and are lightweight, including only required system libraries and a dedicated file system.
2. High Speed: Containers' shared access to the host kernel enables faster performance.
3. Efficient Resource Usage: Containers dynamically allocate and release resources as needed, optimizing system utilization.

**How to Install a Docker?**

Since I am using Linux VM. I'll show you the Step by step guide to install docker in linux VM ie Ubuntu.
To create a VM in AWS, Please refer our AWS folder. orelse To create a VM in your host machine. Please refer the Virtualization folder

Go to google and search like “install docker on ubuntu” and follow the instructions and run the commands like below
https://docs.docker.com/engine/install/ubuntu/

1. To install Docker Engine
   ![1](https://github.com/user-attachments/assets/1ba7720e-66cf-4feb-b89f-e893f107a643)
   
2. To install Docker Client
   ![2](https://github.com/user-attachments/assets/ca40e503-6f0d-41b7-9eaa-c0cee0c4232c)

Once it was installed. Please verify the installation using below command
**docker --version**
![3](https://github.com/user-attachments/assets/6423136a-bbda-4285-8b9a-16f3e498e5f8)


**Basic Docker Commands:**

1. docker image build
2. docker image pull
3. docker conatiner run
4. docker conatiner stop
5. docker container exec
6. docker container ps
7. docker image inspect
8. docker login
9. docker image history
10. docker image push
11. docker image --help
    


   




