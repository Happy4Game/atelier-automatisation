variable "docker_image" {
  description = "nom image docker"
  type = string
  default = "nginx:latest"
}

variable "container_docker" {
  description = "nom container docker"
  type = string
  default = "nginx-terraform"
}

variable "port_externe" {
  description = "post exposé machine"
  type = number
  default = 8000
}

variable "port_interne" {
  description = "port interne container"
  type = number
  default = 80
}

variable "texte_page" {
  description = "texte afficher page web"
  type = string
  default = "Bonjour à tous, voyez donc la toute puissance de notre projet !"
}