terraform {
  required_providers {
    confluentcloud = {
      source  = "confluentinc/confluentcloud"
      version = "0.2.0"
    }
  }
}
provider "confluentcloud" {
  api_key    = var.cloud_api_key 
  api_secret = var.cloud_api_key
}
