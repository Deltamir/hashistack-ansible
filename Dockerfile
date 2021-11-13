FROM debian:latest
RUN apt-get update -y
RUN apt-get install git unzip curl gnupg software-properties-common python3-pip jq -y
RUN apt-get install ansible -y
RUN pip3 install hvac python-nomad ansible-modules-hashivault
RUN apt-get update -y
RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
RUN apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
RUN apt-get update -y
RUN apt-get install consul nomad vault -y