<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.25.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.96.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_service_plan.serviceplan](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_env"></a> [app\_env](#input\_app\_env) | The env name: dev, qa, test or prod | `string` | n/a | yes |
| <a name="input_app_prefix"></a> [app\_prefix](#input\_app\_prefix) | The 3 or 4 character mnemonic for the application name | `string` | n/a | yes |
| <a name="input_asp_initial_worker_count"></a> [asp\_initial\_worker\_count](#input\_asp\_initial\_worker\_count) | The initial number of workes for this service plan | `number` | `1` | no |
| <a name="input_asp_os_type"></a> [asp\_os\_type](#input\_asp\_os\_type) | The operating system type for this app service plan | `string` | `"Linux"` | no |
| <a name="input_asp_sku"></a> [asp\_sku](#input\_asp\_sku) | The SKU for the asp. Link: https://azure.microsoft.com/en-us/pricing/details/app-service/windows/ | `string` | `"B1"` | no |
| <a name="input_location"></a> [location](#input\_location) | The AZURE region location where this resource will be deployed to | `string` | n/a | yes |
| <a name="input_maximum_elastic_worker_count"></a> [maximum\_elastic\_worker\_count](#input\_maximum\_elastic\_worker\_count) | The maximum number of elastic workers allowed on this plan | `number` | `1` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The resource group name this private endpoint needs to be created in | `string` | n/a | yes |
| <a name="input_sub_prefix"></a> [sub\_prefix](#input\_sub\_prefix) | The 3 or 4 character mnemonic for this subscription | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags to be applied to resources | `map(string)` | `{}` | no |
| <a name="input_unique_name_string"></a> [unique\_name\_string](#input\_unique\_name\_string) | Provide this value if you want to create a unique name combination for this resource | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_asp_id"></a> [asp\_id](#output\_asp\_id) | The Id of the app service plan |
| <a name="output_asp_kind"></a> [asp\_kind](#output\_asp\_kind) | The kind of the app service plan created |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
