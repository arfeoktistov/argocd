#module "argocd_dev" {
##  source           = "./terraform_argocd_eks"
#  eks_cluster_name = "prod-dev"
#  chart_version    = "5.46.7"
#}


module "argocd_prod" {
  source           = "./terraform_argocd_eks"
  eks_cluster_name = "demo-prod"
  chart_version    = "5.46.2"
}

#Can be deployed ONLY after ArgoCD deployment: depends_on = [module.argocd_dev]
module "argocd_prod_root" {
  source             = "./terraform_argocd_root_eks"
  eks_cluster_name   = "demo-prod"
  git_source_path    = "demo_prod/applications"
  git_source_repoURL = "git@github.com:arfeoktistov/argocd1.git"
}

# Can be deployed ONLY after ArgoCD deployment: depends_on = [module.argocd_prod]
#module "argocd_prod_root" {
#  source             = "./terraform_argocd_root_eks"
#  eks_cluster_name   = "demo-prod"
#  git_source_path    = "demo_prod/applications"
#  git_source_repoURL = "git@github.com:arfeoktistov/argocd.git"
#}
