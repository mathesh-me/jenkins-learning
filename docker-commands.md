### Docker Command for spin up the container:
```
docker-compose up -d
```
### Docker command for list the containers:
```
docker ps
```
### Docker command for view logs of container:
```
docker logs -f container_name
```
### Docker Command for getting bash terminal in Container:
```
docker exec -ti container_name bash
```
### Docker Command for copying one file from host to container:
```
docker cp file_name container_name:path
```
### Docker command to build the image:
```
docker-compose build
```
### SSH Key generation command for SSH keys:
```
ssh-keygen -f key_name
```
### SSH using private key:
```
ssh -i key_path user@host_name
```