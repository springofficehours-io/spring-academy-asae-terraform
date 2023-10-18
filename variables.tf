variable "cloud_name" {
  description = "The Azure cloud environment to use. Available values at https://www.terraform.io/docs/providers/azurerm/#environment"
  default     = "public"
  type        = string
}

variable "identifier" {
  description = "The identifier to use for this deployment."
  default     = "bootiful"
  type        = string
}

variable "location0" {
  description = "The Azure location/region where the resources will be created."
  default     = "centralus"
  type        = string
}

variable "tags" {
  description = "Key/value tags to assign to all resources."
  default     = {}
  type        = map(string)
}