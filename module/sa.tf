resource "confluentcloud_service_account" "env-sa" {
  display_name = "env_sa"
  description = "description for env_sa"
}
output "service_account_id" {
  value = confluentcloud_service_account.env-sa.id
}

