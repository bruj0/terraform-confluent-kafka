# confluent api-key create --service-account 1629 --resource lkc-4xrp1
# resource "confluent_api_key" "api-key" {
#   provisioner "local-exec" {
#     command = "confluent api-key create --service-account ${confluentcloud_service_account.env-sa.id} --resource ${confluentcloud_kafka_cluster.basic-cluster-on-azure.id} --output json"
#   }
# }

# resource "confluentcloud_kafka_acl" "describe-basic-cluster" {
#   kafka_cluster = confluentcloud_kafka_cluster.basic-cluster-on-azure.id
#   resource_type = "CLUSTER"
#   resource_name = "kafka-cluster-acl"
#   pattern_type = "LITERAL"
#   principal = "User:${confluentcloud_service_account.env-sa.id}"
#   operation = "DESCRIBE"
#   permission = "ALLOW"
#   http_endpoint = confluentcloud_kafka_cluster.basic-cluster-on-azure.http_endpoint
#   credentials {
#     key = "<Kafka API Key for confluentcloud_kafka_cluster.basic-cluster>"
#     secret = "<Kafka API Secret for confluentcloud_kafka_cluster.basic-cluster>"
#   }
# }
