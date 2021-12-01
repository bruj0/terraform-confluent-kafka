
module "scphiphol-kafka-environment" {
    source = "./module"
    display_name = "Terraform Env"
    cloud_api_key    = var.confluent_cloud_api_key
    cloud_api_secret = var.confluent_cloud_api_secret
}
