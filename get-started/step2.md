# Step 2 - Create a resource

cd terraform

# main.tf
cat <<EOT > main.tf
resource "local_file" "demo" {
  content  = "Hello World from Terraform 🚀"
  filename = "\${path.module}/hello.txt"
}
EOT

# Initialize Terraform
terraform init

# Preview the execution plan
terraform plan

# Apply the configuration
terraform apply -auto-approve

# Verify the file was created
cat hello.txt

> **Explanation**:
> - `resource "local_file" "demo"` → creates a local file
> - `content` → text inside the file
> - `filename` → path of the file
