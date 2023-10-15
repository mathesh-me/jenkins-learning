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
# For creating remote host
  remote_host:
    container_name: remote_host
    image: remote_host
    build:
      context: ubuntu
    networks:
      - net
# For creating container for mysql
  db_host:
    container_name: db
    image: mysql:5.7
    environment:
      - "MYSQL_ROOT_PASSWORD=1234"
    volumes:
      - $PWD/db_data:/var/lib/mysql
    networks:
      - net
# For web hosting
  web:
    container_name: web
    image: ansible-web
    build:
      context: jenkins-ansible/web
    ports:
      - "80:80"
    networks:
      - net
networks:
  net: