# Prerequistes:
- You should have Ubuntu (either installed on physical hardware or in a virtual machine) or any other Linux distribution, or macOS.
- If you are using Ubuntu in a virtual machine, make sure you can SSH into the machine.
- To SSH into the machine, use the following command:
```
ssh -i user@host_ip
```
- It will prompt you for a password; please provide the password.
- After that, you'll be ready to go.

# Commands for docker engine installation:

```
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```
```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

**To check whether docker is installed or not**
```
sudo docker run hello-world
```

# To start docker service whenever our system reboot:
```
sudo systemctl enable docker
```

# To add ubuntu user to docker group:
```
sudo usermod -aG docker ubuntu
```

# Commands for docker-compose installation:

```
sudo apt-get update
sudo apt-get install docker-compose

```

**To check whether docker-compose is installed or not**
```
docker-compose version
```

# Docker command for installing jenkins image in docker:

```
docker pull jenkins/jenkins
```

# Create a new directory with any name you want:
- And then create a docker-copose.yml file to spin up the container , you can use any editor you want to create the file.

```docker-compose.yml
version: '3'
services:
# For creating jenkins container
  jenkins:
    container_name: jenkins
    image: jenkins/jenkins
    ports:
      - "8080:8080"
    volumes:
      - "$PWD/jenkins_home:/var/jenkins_home"
    networks:
      - net
networks:
  net:
```
- Create a new folder inside the folder you just created.
- Give the new folder name as jenkins_home
- And then run below command to give permissions to ubuntu user to store data in that folder:
```
sudo chown 1000:1000 jenkins_home -R
```

# Create the jenkins server:

- Finally run the below command to spin up the server:
```
docker-compose up -d
```

