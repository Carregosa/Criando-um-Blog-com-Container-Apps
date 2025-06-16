variable "resource_group_name" {
  description = "Nome do grupo de recursos"
  type        = string
  default     = "rg-blog-demo"
}

variable "location" {
  description = "Localização do recurso no Azure"
  type        = string
  default     = "East US"
}

variable "app_service_plan_name" {
  description = "Nome do plano do App Service"
  type        = string
  default     = "asp-blog-demo"
}

variable "app_service_name_prefix" {
  description = "Prefixo do nome do App Service"
  type        = string
  default     = "blog-demo-app"
}

variable "app_service_sku_tier" {
  description = "Nível do SKU do App Service"
  type        = string
  default     = "Basic"
}

variable "app_service_sku_size" {
  description = "Tamanho do SKU do App Service"
  type        = string
  default     = "B1"
}

variable "linux_fx_version" {
  description = "Runtime da aplicação"
  type        = string
  default     = "PHP|8.0"  # Pode ser NODE|16-lts, PYTHON|3.9 etc.
}

variable "github_repo_url" {
  description = "URL do repositório do GitHub"
  type        = string
}

variable "github_branch" {
  description = "Branch do repositório a ser usado no deploy"
  type        = string
  default     = "main"
}
