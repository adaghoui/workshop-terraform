resource "local_file" "demo" {
  content  = "Hello World from Terraform 🚀"
  filename = "${path.module}/hello.txt"
}
