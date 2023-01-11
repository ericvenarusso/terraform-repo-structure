This repository contains a example of a terraform project structure. Google Best Praticies using Terraform documentations was used as a reference https://cloud.google.com/docs/terraform/best-practices-for-terraform#subdirectories.

The documentation shows a repository structure separated by environments. Having a folder responsible for the module and another responsible for the environments.
```
├── Makefile
├── README.md
├── environments
│   ├── production
│   │   ├── backend.tf
│   │   └── main.tf
│   └── staging
│       ├── backend.tf
│       └── main.tf
└── modules
    └── docker_infraestructure
        ├── container.tf
        ├── main.tf
        ├── output.tf
        └── variables.tf
```


## Instructions
To facilitate the execution of terraform commands between environments, a Makefile was created.

### Terraform init
To run `terraform init`, execute:
```shell
make init ENVIRONMENT=staging
```

### Terraform plan
To run `terraform plan`, execute:
```shell
make plan ENVIRONMENT=staging
```

### Terraform apply
To run `terraform apply`, execute:
```shell
make apply ENVIRONMENT=staging
```
