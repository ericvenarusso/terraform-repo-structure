module "docker_infraestructure" {
    source = "../../modules/docker_infraestructure"
    
    container_name = "ngnix-production"
}
