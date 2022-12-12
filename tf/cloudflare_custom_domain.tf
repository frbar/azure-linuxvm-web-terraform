resource "cloudflare_record" "a" {
  zone_id         = var.cf_zone_id
  name            = var.env_name
  type            = "A"
  value           = azurerm_public_ip.my_terraform_public_ip.ip_address
  proxied         = false
  allow_overwrite = true

  depends_on = [
    time_sleep.wait_for_ip_allocation
  ]
}
