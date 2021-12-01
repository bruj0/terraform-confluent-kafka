variable "confluent_cloud_api_key" {
  type = string
  description = "Kafka API key"
  sensitive = true  
}

variable "confluent_cloud_api_secret" {
  type = string
  description = "Kafka API Secret"
  sensitive = true  
}
