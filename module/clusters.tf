resource "confluentcloud_kafka_cluster" "basic-cluster-on-azure" {
  display_name = "${var.display_name} Dev Cluster"
  availability = "SINGLE_ZONE"
  cloud        = "AZURE"
  region       = "westeurope"
  basic {}

  environment {
    id = confluentcloud_environment.env.id
  }
}

output "cluster_id" {
  value = confluentcloud_kafka_cluster.basic-cluster-on-azure.id
}

output "cluster_bootstrap_endpoint" {
  value = confluentcloud_kafka_cluster.basic-cluster-on-azure.bootstrap_endpoint
}
output "cluster_http_endpoint" {
  value = confluentcloud_kafka_cluster.basic-cluster-on-azure.http_endpoint
}


# resource "confluentcloud_kafka_cluster" "dedicated-cluster-on-azure" {
#   display_name = "dedicated_kafka_cluster_on_azure"
#   availability = "SINGLE_ZONE"
#   cloud        = "AZURE"
#   region       = "centralus"
#   dedicated {
#     cku = 1
#   }

#   environment {
#     id = confluentcloud_environment.test-env.id
#   }
# }
