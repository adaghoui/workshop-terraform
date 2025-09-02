#!/bin/bash
set -e

# Update package lists and install dependencies
apt-get update -y
apt-get install -y wget unzip

# Download and install the latest Terraform version
TERRAFORM_VERSION="1.13.1"
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Extract the Terraform binary, overwrite if it exists
unzip -o terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Move Terraform binary to system PATH
mv terraform /usr/local/bin/

# Verify Terraform installation
terraform -version

# Create Terraform working directory
mkdir -p /root/terraform
