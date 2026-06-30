output "cloud_accounts" {
  description = "Cloud accounts returned by the Wiz provider filters."
  value       = data.wiz_cloud_accounts.selected.cloud_accounts
}

output "container_registries" {
  description = "Container registries returned by the Wiz provider filters."
  value       = data.wiz_container_registries.selected.container_registries
}

output "kubernetes_clusters" {
  description = "Kubernetes clusters returned by the Wiz provider filters."
  value       = data.wiz_kubernetes_clusters.selected.kubernetes_clusters
}

output "kubernetes_namespaces" {
  description = "Kubernetes namespaces returned by the Wiz provider filters."
  value       = data.wiz_kubernetes_namespaces.selected.kubernetes_namespaces
}
