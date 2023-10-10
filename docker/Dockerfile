# Dockerfile for Creating CentOS image
FROM centos

RUN yum -y install openssh-server

RUN useradd remote_user && \
    echo "remote" | chpasswd && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

COPY remote_key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user -R /home/remote_user/.ssh/ && \
    chmod 600 /home/remote_user/.ssh/authorized_keys
    
RUN /usr/sbin/sshd-keygen

CMD /usr/sbin/sshd -D