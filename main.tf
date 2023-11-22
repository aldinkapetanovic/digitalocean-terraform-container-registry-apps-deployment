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

resource "digitalocean_app" "app" {
  spec {
    name   = "app"
    region = "fra1"

    service {
      name = "app"
      image {
        registry_type = "DOCR"
        registry      = ""
        repository    = "app"
        tag           = "main"
        deploy_on_push {
          enabled = true
        }
      }

      http_port = 3000

      alert {
        rule     = "CPU_UTILIZATION"
        value    = 50
        operator = "GREATER_THAN"
        window   = "FIVE_MINUTES"
        disabled = false
      }
    }
  }
}

resource "digitalocean_app" "app-stage" {
  spec {
    name   = "app-stage"
    region = "fra1"

    service {
      name = "app-stage"
      image {
        registry_type = "DOCR"
        registry      = ""
        repository    = "app"
        tag           = "stage"
        deploy_on_push {
          enabled = true
        }
      }

      http_port = 3000

      alert {
        rule     = "CPU_UTILIZATION"
        value    = 50
        operator = "GREATER_THAN"
        window   = "FIVE_MINUTES"
        disabled = false
      }
    }
  }
}

resource "digitalocean_app" "srv" {
  spec {
    name   = "srv"
    region = "fra1"

    service {
      name = "srv"
      image {
        registry_type = "DOCR"
        registry      = ""
        repository    = "srv"
        tag           = "main"
        deploy_on_push {
          enabled = true
        }
      }

      http_port = 3000

      alert {
        rule     = "CPU_UTILIZATION"
        value    = 50
        operator = "GREATER_THAN"
        window   = "FIVE_MINUTES"
        disabled = false
      }
    }
  }
}

resource "digitalocean_app" "srv-stage" {
  spec {
    name   = "srv-stage"
    region = "fra1"

    service {
      name = "srv-stage"
      image {
        registry_type = "DOCR"
        registry      = ""
        repository    = "srv"
        tag           = "stage"
        deploy_on_push {
          enabled = true
        }
      }

      http_port = 3000

      alert {
        rule     = "CPU_UTILIZATION"
        value    = 50
        operator = "GREATER_THAN"
        window   = "FIVE_MINUTES"
        disabled = false
      }
    }
  }
}
