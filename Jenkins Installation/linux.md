## Install Jenkins on Virtual Machine

### Prerequisites

- Linux OS (Ubuntu Preferred)

### Jenkins Installation Steps

1. Install Java

```bash
sudo apt-get update
sudo apt-get install fontconfig openjdk-11-jre
```

2. Add Jenkins Repository

```bash
sudo apt-get update

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
```

3. Install Jenkins

```bash
sudo apt-get update
sudo apt-get install jenkins
```

4. Enable Jenkins

```bash
sudo systemctl enable jenkins
```

5. Start Jenkins

```bash
sudo systemctl start jenkins
```

6. Check Jenkins Status

```bash
sudo systemctl status jenkins
```

7. Open Jenkins in Browser

```bash
http://your-machine-ip:8080
```

8. Unlock Jenkins

```bash
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

9. Install Suggested Plugins

10. Create Admin User

11. Save and Finish

12. Start Using Jenkins