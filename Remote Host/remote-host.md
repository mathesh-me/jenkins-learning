### For creating remote-host:
- Merge the below code under the jenkins service in docker-compose.yml file
```
  remote_host:
      container_name: remote_host
      image: remote_host
      build:
        context: ubuntu
      networks:
        - net
```