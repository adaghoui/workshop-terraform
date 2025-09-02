# Create a Key-Value Map (KVM) in Apigee Edge
resource "apigee_kvm" "example" {
  name = "demo-kvm"              # Name of the KVM
  env  = var.apigee_env          # Environment where the KVM is created

  entry {
    name  = "key1"                # Key name
    value = "value1"              # Key value
  }
}
