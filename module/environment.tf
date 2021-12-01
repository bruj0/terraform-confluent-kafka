
resource "confluentcloud_environment" "env" {
  display_name = "${var.display_name}"
}

output "environment_id" {
  value = confluentcloud_environment.env.id
}

