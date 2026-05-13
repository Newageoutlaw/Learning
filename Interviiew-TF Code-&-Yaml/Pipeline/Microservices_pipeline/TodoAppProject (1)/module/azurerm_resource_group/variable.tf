variable "dev_rg" {
  description = "Map of resource group names and locations for development"
  type = map(object({
    rgname   = string
    location = string
  }))
}