### For creating mysql server
- Merge the below code under the remote-host service in docker-compose.yml file:
```
   db_host:
    container_name: db
    image: mysql:5.7
    environment:
      - "MYSQL_ROOT_PASSWORD=1234"
    volumes:
      - $PWD/db_data:/var/lib/mysql
    networks:
      - net
```

### Commands for logging into databse:

- From host to mysql databse:
```
mysql -u root -p
```
The above command will prompt you for password , you can enter your password to get into database

- From remote-host to mysql database:

```
mysql -u root -h host_name -p
```
The above command will prompt you for password , you can enter your password to get into database