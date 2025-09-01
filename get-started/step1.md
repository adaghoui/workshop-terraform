# Step 1 - Configure Terraform

# Create terraform directory and files
mkdir -p terraform
cd terraform

# terraform.tf
cat <<EOT > terraform.tf
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}
EOT

# provider.tf
cat <<EOT > provider.tf
provider "local" {}
EOT

# Verify Terraform is available
terraform -version

> **Explanation**:
> - `terraform.tf` → specifies required providers
> - `provider.tf` → configures the local provider

