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
for pkg in docker.io docker-doc docker-compose podman-docker containerd runc; do sudo apt-get remove $pkg; done
```

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

```
sudo docker run hello-world
```

# Commands for docker-compose installation:

```
sudo apt-get update
sudo apt-get install docker-compose

```

```
docker-compose version
```
# Docker command for installing jenkins image in docker:

```
docker pull jenkins/jenkins
```

# Configure the Jenkins server:
- Use the docker-compose file in my repository to create container for jenkins server


