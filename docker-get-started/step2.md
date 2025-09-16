# Step 2 – Apigee Provider

The Apigee provider allows Terraform to manage **Apigee Edge Cloud resources** such as KVMs.

## Files

- `terraform.tf` – general Terraform configuration (required version, backend, etc.)  
- `provider.tf` – defines the Apigee provider (authentication, organization, environment)  
- `variables.tf` – declares `apigee_token`, `apigee_org`, and `apigee_env` variables  
- `main.tf` – creates an Apigee environment-scoped Key Value Map (KVM)  

## Commands

```bash
# Set your Apigee token from browser or CLI
export TF_VAR_apigee_token="eyJhbGciOiJSUzI1NiIs..."

# Optionally override defaults
export TF_VAR_apigee_org="my-org"
export TF_VAR_apigee_env="test"

cd /root/terraform/apigee
terraform init
terraform apply
```

## Expected Result

- Terraform creates a KVM named `terraform-demo-kvm` in the chosen Apigee environment (`dev` by default).  
- The KVM contains two entries:  
  - `first = "firstValue"`  
  - `second = "secondValue"`  

## Notes

- Authentication is done using an **access token** instead of username/password.  
- You can extract the token from your browser cookies (`access_token`).  
- This step shows how Terraform can automate **Apigee environment configuration**.  
