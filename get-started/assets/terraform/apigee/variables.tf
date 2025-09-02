# Apigee organization
variable "apigee_org" {
  description = "Apigee organization name"
  type        = string
  default     = "accor-group-nonprod"         
}

# Apigee environment
variable "apigee_env" {
  description = "Apigee environment name"
  type        = string
  default     = "dev"           
}

# Apigee username
variable "apigee_user" {
  description = "Apigee username"
  type        = string
}

# Apigee password
variable "apigee_password" {
  description = "Apigee password"
  type        = string
  sensitive   = true
}
