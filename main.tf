terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.5.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = var.docker_image
  keep_locally = true
}

resource "docker_container" "nginx" {
  name = var.container_docker
  image = docker_image.nginx.image_id

  ports {
    internal = var.port_interne
    external = var.port_interne
  }

  command = [
    "/bin/sh",
    "-c",
    "echo '<!DOCTYPE html><html><head><meta charset=\"UTF-8\"><title>TP1</title></head><body><h1>${var.texte_page}</h1></body></html>' > /usr/share/nginx/html/index.html && nginx -g 'daemon off;'" 
    ]
}