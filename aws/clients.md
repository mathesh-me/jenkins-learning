### Clients installation:

- We have to install mysql client and awscli client.
- MySQL Client for taking the back-up from our mysql database.
- AWS Client for uploading the back-up in AWS S3 bucket.

### Commands for client installation:

- Add the below commands in remote-host Dockerfile

```
RUN apt update && \
    apt -y install mysql-server && \
    systemctl start mysql.service

RUN apt -y install awscli
```