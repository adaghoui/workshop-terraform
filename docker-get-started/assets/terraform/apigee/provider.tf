# Configure the Apigee provider with credentials
provider "apigee" {
  organization = var.apigee_org
  access_token = var.apigee_token 
}