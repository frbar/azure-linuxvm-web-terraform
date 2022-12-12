variable "rg_name" {
  type = string
}

variable "env_name" {
  type = string
}

variable "location" {
  type = string
}

variable "cf_zone_id" {
  type = string
  sensitive = true
}

variable "cf_domain" {
  type = string
}
