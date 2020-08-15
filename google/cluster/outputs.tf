output "cluster_name" {
  value = module.cluster.cluster_name
  description = "The name of the cluster"
}

output "cluster_endpoint" {
  value = module.cluster.cluster_endpoint
  description = "The endpoint to connect to the cluster"
}

output "cluster_ca" {
  value = module.cluster.cluster_ca
  description = "The public certificate authority for the cluster"
}

output "cluster_location" {
  value = module.cluster.cluster_location
  description = "The location of the cluster"
}