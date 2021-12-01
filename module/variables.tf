variable "cloud_api_key" {
  type = string
  description = "Kafka API Key"
}

variable "cloud_api_secret" {
  type = string
  description = "Kafka API Secret"
  sensitive = true  
}

# variable "service_account_int_id" {
#   type = number
#   description = "Service Account Integer ID"
# }

variable "display_name" {
  type = string
  description = "Name of the environment"
}
