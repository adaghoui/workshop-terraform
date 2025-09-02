# Configure the Apigee provider with credentials
provider "apigee" {
  org      = var.apigee_org          # Apigee organization
  env      = var.apigee_env          # Apigee environment
  username = var.apigee_user         # Apigee username
  password = var.apigee_password     # Apigee password
}