provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_app_service_plan" "asp" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = var.app_service_sku_tier
    size = var.app_service_sku_size
  }
}

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  number  = true
  special = false
}

resource "azurerm_app_service" "app" {
  name                = "${var.app_service_name_prefix}-${random_string.suffix.result}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  site_config {
    linux_fx_version = var.linux_fx_version
  }

  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE = "false"
  }
}

resource "azurerm_app_service_source_control" "sourcecontrol" {
  app_id               = azurerm_app_service.app.id
  repo_url             = var.github_repo_url
  branch               = var.github_branch
  use_manual_integration = false
  use_mercurial        = false
}
