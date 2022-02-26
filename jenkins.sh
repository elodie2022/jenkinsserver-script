#!/bin/bash

#Description: Jenkins installation

#Author: Elodie

# Date : 2/25/2022

echo "We're about to install jenkins.Please be patience."

sleep 3

echo "Here below are the steps"

sleep 3

sudo yum install java-1.8.0-openjdk-devel -y

sleep 3

sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo -y

sleep 3

sudo yum install wget -y

sleep 3

sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo -y

sleep 3

sudo yum install jenkins -y          

sleep 2

sudo systemctl start jenkins 

sleep 2

sudo systemctl status jenkins 

sleep 2

sudo systemctl enable jenkins 

sleep 2

sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp 
sudo firewall-cmd --reload

echo "Installation completed.Thanks for your patience."  
