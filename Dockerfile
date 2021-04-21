FROM ubuntu:focal
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apt-utils && apt-get install -y gettext ca-certificates software-properties-common curl python python-dev python3 python3-dev wget jq git bash  openssh-client openssl libssl-dev gcc python3-pip build-essential python3-apt

RUN curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - && \
apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" && \
apt-get update && apt-get install terraform 


RUN pip3 install awscli ansible --upgrade pip