resource "confluentcloud_kafka_topic" "orders" {
  kafka_cluster = confluentcloud_kafka_cluster.basic-cluster-on-azure.id
  topic_name = "orders"
  partitions_count = 4
  http_endpoint = confluentcloud_kafka_cluster.basic-cluster-on-azure.http_endpoint
  config = {
    "cleanup.policy" = "compact"
    "max.message.bytes" = "12345"
    "retention.ms" = "6789000"
  }
  credentials {
    key = var.cloud_api_key
    secret = var.cloud_api_key
  }
}

# resource "confluentcloud_kafka_acl" "describe-orders" {
#   kafka_cluster = confluentcloud_kafka_cluster.basic-cluster-on-azure.id
#   resource_type = "TOPIC"
#   resource_name = confluentcloud_kafka_topic.orders.topic_name
#   pattern_type = "LITERAL"
#   principal = "User:${var.service_account_int_id}"
#   operation = "DESCRIBE"
#   permission = "ALLOW"
#   http_endpoint = confluentcloud_kafka_cluster.basic-cluster-on-azure.http_endpoint
#   credentials {
#     key = var.kafka_api_key
#     secret = var.kafka_api_secret
#   }
# }

# resource "confluentcloud_kafka_acl" "describe-test-basic-cluster" {
#   kafka_cluster = confluentcloud_kafka_cluster.basic-cluster-on-azure.id
#   resource_type = "CLUSTER"
#   resource_name = "kafka-cluster"
#   pattern_type = "LITERAL"
#   principal = "User:${var.service_account_int_id}"
#   operation = "DESCRIBE"
#   permission = "ALLOW"
#   http_endpoint = confluentcloud_kafka_cluster.basic-cluster-on-azure.http_endpoint
#   credentials {
#     key = var.kafka_api_key
#     secret = var.kafka_api_secret
#   }
# }