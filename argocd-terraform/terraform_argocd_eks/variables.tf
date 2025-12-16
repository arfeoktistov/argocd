variable "eks_cluster_name" {
  description = "EKS Cluster name to deploy ArgoCD"
  type        = string
}

variable "chart_version" {
  description = "demo-prod"
  type        = string
  default     = "5.46.0"
}

# variable "chart_version" {
#   description = "demo-prod"
#   type        = string
#   default     = "5.46.0"
# }
