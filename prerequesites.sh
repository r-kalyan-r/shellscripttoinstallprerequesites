#!/bin/bash
if [ -x "$(command -v docker)" ]; then
        echo "Docker is installed and  $(docker -v)"
    # command
else
    sudo apt-get update
    sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"
    sudo apt-get update
    sudo apt-get -y install docker-ce docker-ce-cli containerd.io
    # command
fi
if [ -x "$(command -v docker-compose)" ]; then
        echo "Docker-compose is installed and $(docker-compose -v)"
else
    sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    echo "installed docker-compose now"
fi
if [ -x "$(command -v mvn)" ]; then
         echo "Maven is installed and version is $(mvn -v)"

else

        sudo apt install maven -y
        echo "Maven is installed "
fi
if [ -x "$(command -v git)" ]; then
         echo "git is installed and $(git --version)"
else
        sudo apt install git-all
        echo "git install sucessfully"
fi
if [ -x "$(command -v nodejs)" ]; then
         echo "nodejs is installed and the vesrion is $(nodejs -v)"
else
        sudo apt-get install nodejs -y
        sudo apt-get install npm -y
        echo "nodejs is installed now"
fi

if [ -z "$(sudo netstat -tupln | grep 8080)" ];
then
    echo port 8080 open to use;
else
    echo port 8080 is in use by someother application please freeup;
fi
if [ -z "$(sudo netstat -tupln | grep 27017)" ];
then
    echo port 27017 open to use;
else
    echo port 27017 is in use by someother application please freeup;
fi
if [ -z "$(sudo netstat -tupln | grep 80)" ];
then
    echo port 80 open to use;
else
    echo port 80 is in use by someother application please freeup;
fi
if [ -z "$(sudo netstat -tupln | grep 22)" ];
then
    echo port 22 open to use;
else
    echo port 22 is in use by someother application please freeup;
fi
if [ -z "$(sudo netstat -tupln | grep 1111)" ];
then
    echo port 1111 open to use;
else
    echo port 1111 is in use by someother application please freeup;
fi
