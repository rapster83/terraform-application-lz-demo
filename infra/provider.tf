provider "azurerm" {
  features {
    storage {
      # The storage account has no public endpoint, so the GitHub runner can't reach
      # its data plane. Terraform manages it through Azure Resource Manager only.
      data_plane_available = false
    }
  }
  subscription_id                 = var.landing_zone.subscription_id
  resource_provider_registrations = "none" # registered once by the platform team
  storage_use_azuread             = true   # no shared keys anywhere
}
