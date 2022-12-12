terraform {
  backend "local" {
    path = "terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.32.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.28.0"
    }
    tls = {
      source = "hashicorp/tls"
      version = "~>4.0"
    }
  }

}

provider "azurerm" {
  features {}
}

provider "cloudflare" {
  #api_token ---> env var CLOUDFLARE_API_TOKEN
}
