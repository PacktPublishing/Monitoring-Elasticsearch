#!/bin/sh
# Monitoring Elasticsearch
# By: Dan Noble, Mahmoud Lababidi

# This script installs Elasticsearch on RedHat Enterprise Linux/CentOS/Fedora

# Add gpg key:
rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

# Create a new yum repo at /etc/yum.repos.d/elasticsearch.repo
sudo echo "[elasticsearch-1.7]" >> /etc/yum.repos.d/elasticsearch.repo
sudo echo "name=Elasticsearch 1.7.X repository" >> /etc/yum.repos.d/elasticsearch.repo
sudo echo "baseurl=http://packages.elastic.co/elasticsearch/1.7/centos" >> /etc/yum.repos.d/elasticsearch.repo
sudo echo "gpgcheck=1" >> /etc/yum.repos.d/elasticsearch.repo
sudo echo "gpgkey=http://packages.elastic.co/GPG-KEY-elasticsearch" >> /etc/yum.repos.d/elasticsearch.repo
sudo echo "enabled=1" >> /etc/yum.repos.d/elasticsearch.repo

# Install Elasticsearch
sudo yum install elasticsearch

# Start Elasticsearch
sudo service elasticsearch start

