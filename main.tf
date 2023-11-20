terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

variable "do_token" {}

provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_container_registry" "povops-cr" {
  name                   = "povops"
  subscription_tier_slug = "basic"
  region                 = "fra1"
}
