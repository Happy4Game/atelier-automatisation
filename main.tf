terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.5.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "sonarqube" {
  name         = "sonarqube:latest"
  keep_locally = true
}

resource "docker_container" "sonarqube" {
  name  = "sonarqube-terraform"
  image = docker_image.sonarqube.image_id
  ports {
    internal = 9000
    external = 9000
  }
}