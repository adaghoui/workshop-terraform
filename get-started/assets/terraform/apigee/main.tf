# Example: Environment-scoped Key Value Map (KVM)
resource "apigee_environment_kvm" "example" {
  environment_name = var.apigee_env
  name             = "terraform-demo-kvm"

  entry = {
    first  = "firstValue"
    second = "secondValue"
  }
}
