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
- 1000:1000 in the above command means the id of user , You can check your user id by using the below command:
```
id
```

# Creating the jenkins server:

- Finally run the below command to spin up the server:
```
docker-compose up -d
```

# Exploring Jenkins UI:

- Use the IP address of your machine to log in to Jenkins.
- Your_IP:8080 (E.g., 44.176.0.1:8080) Paste this into your browser to log in to Jenkins.
- Make sure that your machine allows traffic on port 8080.
- Use the following command to retrieve the login password:
```
docker logs -f container_name
```
If you Scroll down little bit you can see something like this:

############################################################################################
############################################################################################
############################################################################################

Jenkins initial setup is required. An admin user has been created and a password generated.
Please use the following password to proceed to installation:

***fc013f995f8f4322b799694109ef2d34*** # This is the password

This may also be found at: /var/jenkins_home/secrets/initialAdminPassword

###########################################################################################
###########################################################################################
###########################################################################################

- After that, Jenkins will prompt you to install plugins. You can choose and install plugins according to your preferences.
- Following this, you can create your account.
- Next, Jenkins will prompt you to change the URL. You can change it if desired, or leave it as it is.
- Finish the above steps to enter into jenkins UI.



