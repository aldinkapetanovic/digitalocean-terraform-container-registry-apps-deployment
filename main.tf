terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

variable "do_token" {}
variable "registry_endpoint" {}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_container_registry" "cr" {
  name                   = var.registry_endpoint
  subscription_tier_slug = "basic"
  region                 = "fra1"
}
