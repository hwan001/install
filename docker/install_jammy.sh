#!/bin/bash
#apt update
#apt install -y vim net-tools gnupg2 curl jq software-properties-common

# downlaod gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Ubuntu 22.04 LTS
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu jammy stable"

# install docker
apt install -y docker-ce docker-compose-plugin

# install docker-compose
# VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/latest | jq .name -r)
# DESTINATION=/usr/bin/docker-compose
# 
# sudo curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-$(uname -s)-$(uname -m) -o $DESTINATION
# sudo chmod 755 $DESTINATION
# 
# docker-compose -v