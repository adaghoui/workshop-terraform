# Step 1 – Local Provider

The Local provider allows Terraform to manage **local resources** on your machine.

## Files

- `terraform.tf` – general Terraform configuration (required version, backend, etc.)
- `provider.tf` – defines the local provider
- `main.tf` – creates a local file as a demo

## Commands

```bash
cd /root/terraform/local
terraform init       # Initialize the working directory
terraform apply      # Apply the configuration and create the local file
```

## Expected Result

- Terraform creates a file `hello-local.txt` in the same directory with content: Hello from Local Provider!

## Notes

- `terraform.tf` contains global settings for Terraform.
- This step helps you understand how Terraform works with a provider that manages **local files**.
- You can inspect the generated file to see the output.