module "module-infraestructure" {
    source = "../../modules/docker_infraestructure"

    container_name = "ngnix-stg"
}
