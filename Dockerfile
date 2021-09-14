FROM nginx
# or, for example, FROM ansible/ubuntu14.04-ansible:stable

# Add playbooks to the Docker image
RUN apt-get update
RUN apt install ansible -y
RUN apt install python -y
COPY ./k8install.yaml /. 
CMD bash
