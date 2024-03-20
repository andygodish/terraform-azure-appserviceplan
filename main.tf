resource "azurerm_service_plan" "serviceplan" {
  location            = var.location
  name                = "asp-${local.uniq_name}${var.sub_prefix}-${var.app_prefix}-${var.app_env}-${local.location_abbr[var.location]}"
  resource_group_name = var.resource_group_name

  maximum_elastic_worker_count = local.elastic_worker_count
  os_type                      = var.asp_os_type
  sku_name                     = var.asp_sku
  worker_count                 = var.asp_initial_worker_count

  tags = merge(local.tags, var.tags)
}
