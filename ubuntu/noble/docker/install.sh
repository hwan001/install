#!/bin/bash
apt update
apt install -y gnupg2 curl jq software-properties-common

# downlaod gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Ubuntu 24.04 LTS
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu noble stable"

# install docker
apt install -y docker-ce docker-compose-plugin
