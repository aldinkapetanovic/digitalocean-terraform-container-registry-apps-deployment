output "app_live_url" {
  value = digitalocean_app.app.live_url
}

output "app-stage_live_url" {
  value = digitalocean_app.app-stage.live_url
}

output "srv_live_url" {
  value = digitalocean_app.srv.live_url
}

output "srv-stage_live_url" {
  value = digitalocean_app.srv-stage.live_url
}
