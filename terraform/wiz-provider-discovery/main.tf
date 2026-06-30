data "wiz_cloud_accounts" "selected" {
  search         = var.cloud_account_search
  cloud_provider = var.cloud_providers
}

data "wiz_container_registries" "selected" {
  search = var.registry_search
  type   = var.registry_types
}

data "wiz_kubernetes_clusters" "selected" {
  search = var.kubernetes_cluster_search
  kind   = var.kubernetes_cluster_kinds
}

data "wiz_kubernetes_namespaces" "selected" {
  search = var.kubernetes_namespace_search
}
