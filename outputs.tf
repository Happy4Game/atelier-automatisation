output "nginx_container_id" {
  description = "Id du contaoner nginx"
  value = docker_container.nginx.id
}

output "url_page_web" {
  description = "url de la page web"
  value = "http://localhost:${var.port_externe}"
}