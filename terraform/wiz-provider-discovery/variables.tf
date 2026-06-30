variable "wiz_environment" {
  description = "Wiz tenant environment. Use prod, gov, or fedramp."
  type        = string
  default     = "prod"

  validation {
    condition     = contains(["prod", "gov", "fedramp"], var.wiz_environment)
    error_message = "wiz_environment must be one of: prod, gov, fedramp."
  }
}

variable "cloud_account_search" {
  description = "Optional search terms for Wiz cloud accounts."
  type        = set(string)
  default     = []
}

variable "cloud_providers" {
  description = "Optional cloud provider filters, for example AWS, GCP, or Azure."
  type        = set(string)
  default     = ["AWS"]
}

variable "registry_search" {
  description = "Optional search term for Wiz container registries."
  type        = string
  default     = ""
}

variable "registry_types" {
  description = "Optional container registry type filters, for example ECR, GAR, GCR, ACR, GHCR, or DOCKER_HUB."
  type        = set(string)
  default     = ["ECR"]
}

variable "kubernetes_cluster_search" {
  description = "Optional search term for Wiz Kubernetes clusters."
  type        = string
  default     = ""
}

variable "kubernetes_cluster_kinds" {
  description = "Optional Kubernetes cluster kind filters, for example EKS, GKE, AKS, OKE, LKE, OPEN_SHIFT, ACK, or SELF_HOSTED."
  type        = set(string)
  default     = ["EKS"]
}

variable "kubernetes_namespace_search" {
  description = "Optional search term for Wiz Kubernetes namespaces."
  type        = string
  default     = ""
}
