#!/bin/bash
set -e

# Install dependencies
apt-get update -y
apt-get install -y wget unzip

# Install Terraform
TERRAFORM_VERSION="1.9.5"
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip
unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip
mv terraform /usr/local/bin/
terraform -version
