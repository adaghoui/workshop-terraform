
variable "apigee_org" {
  description = "Apigee organization name"
  type        = string
  default     = "accor-group-nonprod"         
}

variable "apigee_env" {
  description = "Apigee environment name"
  type        = string
  default     = "dev"           
}

variable "apigee_token" {
  type        = string
  description = "Access token for Apigee authentication"
  sensitive   = true
}

