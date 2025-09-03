# Configure the Apigee provider with credentials
provider "apigee" {
  org          = var.apigee_org
  access_token = var.apigee_token 
}