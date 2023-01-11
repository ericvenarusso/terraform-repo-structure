resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.id
  name  = var.container_name
  ports {
    internal = 80
    external = 8000
  }
}
