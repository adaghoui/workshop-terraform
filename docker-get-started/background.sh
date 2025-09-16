#!/bin/bash
set -e

# ----------------------------------------
# Install dependencies
# ----------------------------------------
apt-get update -y
apt-get install -y wget unzip

# ----------------------------------------
# Install Terraform latest version
# ----------------------------------------
TERRAFORM_VERSION="1.13.1"
wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip

# Unzip to temporary location to avoid conflicts with terraform folder
unzip -o terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /tmp/terraform_bin

# Move Terraform binary to /usr/local/bin and make it executable
mv /tmp/terraform_bin/terraform /usr/local/bin/
chmod +x /usr/local/bin/terraform

# Verify Terraform installation
terraform -version

# ----------------------------------------
# Create working directory for Terraform assets
# ----------------------------------------
mkdir -p /root/terraform
