output "cluster_name" {
  value = google_container_cluster.current.name
  description = "The name of the cluster"
}

output "cluster_endpoint" {
  value = google_container_cluster.current.endpoint
  description = "The endpoint to connect to the cluster"
}

output "cluster_ca" {
  value = google_container_cluster.current.master_auth[0].cluster_ca_certificate
  description = "The public certificate authority for the cluster"
}

output "cluster_location" {
  value = google_container_cluster.current.location
  description = "The location of the cluster"
}