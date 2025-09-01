# Step 0 - Terraform Concepts Recap

Terraform is an **Infrastructure as Code (IaC)** tool that lets you define and manage your infrastructure using code.

### Key points:

- **Terraform CLI**: Tool to run commands like `init`, `plan`, `apply`, etc.
  - **`terraform init`**: Initializes the working directory and downloads required providers.
  - **`terraform plan`**: Shows what changes Terraform will make.
  - **`terraform apply`**: Applies the changes and creates the resources.
- **Providers**: Plugins that allow Terraform to interact with services/APIs.  
  - Example: `local` provider allows creating files locally.
- **Terraform configuration files (`*.tf`)**: Define infrastructure in code.
  - **Terraform block**: Specifies required providers and versions.
  - **Provider block**: Configures the provider.
  - **Resource block**: Represents infrastructure objects like servers, storage buckets, or files.
- **State**: Terraform keeps track of managed resources in a state file.

> 💡 Think of Terraform as a “translator” between your code and real infrastructure.  
> 🔹 `terraform init` must be run **before** `plan` or `apply` to set up the environment.
