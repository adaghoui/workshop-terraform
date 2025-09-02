#!/bin/bash
#set -e

# Install dependencies
apt-get update -y
apt-get install -y wget unzip

# Install Terraform
TERRAFORM_VERSION="1.13.1"
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Remove any existing terraform binary in current directory
rm -f terraform

# Unzip Terraform binary and overwrite if exists
unzip -o terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Move Terraform binary to /usr/local/bin and ensure executable
mv terraform /usr/local/bin/
chmod +x /usr/local/bin/terraform

# Check Terraform version
terraform -version

# Create Terraform working directory
mkdir -p /root/terraform
