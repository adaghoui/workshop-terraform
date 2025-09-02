# Step 2 – Apigee Edge Provider

In this step, you will use the **Apigee Edge provider** to manage resources in Apigee.

We will create a **KVM (Key-Value Map)** as an example resource.

## Files

- `terraform.tf` – general Terraform configuration (required version, backend, etc.)
- `provider.tf` – configures the Apigee Edge provider and credentials
- `main.tf` – defines a KVM resource
- `variables.tf` – contains default values for org/env and declares username/password variables

## Commands

```bash
cd /root/terraform/apigee

# Set your Apigee credentials as environment variables
export TF_VAR_apigee_user="your-username"
export TF_VAR_apigee_password="your-password"

terraform init       # Initialize the working directory
terraform plan       # Preview the creation of the KVM
terraform apply      # Apply the configuration to create the KVM
```

## Example `main.tf`

```hcl
resource "apigee_kvm" "example" {
  name = "demo-kvm"
  env  = var.apigee_env

  entry {
    name  = "key1"
    value = "value1"
  }
}
```

## Expected Result

- Terraform creates a KVM named `demo-kvm` in the specified Apigee environment.  
- You can verify it in the Apigee Edge Cloud UI under **Admin > Key Value Maps**.

## Notes

- The provider uses `TF_VAR_apigee_user` and `TF_VAR_apigee_password` for authentication.  
- Default values are provided for `apigee_org` and `apigee_env` in `variables.tf`.
- This step demonstrates how Terraform can manage **Apigee Edge resources declaratively**.
