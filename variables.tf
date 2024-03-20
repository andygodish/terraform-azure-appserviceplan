variable "app_env" {
  type        = string
  nullable    = false
  description = "The env name: dev, qa, test or prod"
}
variable "app_prefix" {
  type        = string
  nullable    = false
  description = "The 3 or 4 character mnemonic for the application name "
}
variable "asp_initial_worker_count" {
  type        = number
  nullable    = false
  description = "The initial number of workes for this service plan"
  default     = 1
}
variable "asp_os_type" {
  type        = string
  nullable    = false
  description = "The operating system type for this app service plan"
  default     = "Linux"
}
variable "asp_sku" {
  type        = string
  nullable    = false
  description = "The SKU for the asp. Link: https://azure.microsoft.com/en-us/pricing/details/app-service/windows/"
  default     = "B1"
}
variable "location" {
  type        = string
  nullable    = false
  description = "The AZURE region location where this resource will be deployed to"
}
variable "maximum_elastic_worker_count" {
  type        = number
  nullable    = false
  description = "The maximum number of elastic workers allowed on this plan"
  default     = 1
}
variable "resource_group_name" {
  type        = string
  nullable    = false
  description = "The resource group name this private endpoint needs to be created in"
}
variable "sub_prefix" {
  type        = string
  nullable    = false
  description = "The 3 or 4 character mnemonic for this subscription"
}
variable "tags" {
  description = "tags to be applied to resources"
  type        = map(string)
  default     = {}
}
variable "unique_name_string" {
  description = "Provide this value if you want to create a unique name combination for this resource"
  type        = string
  nullable    = true
  default     = ""
}



