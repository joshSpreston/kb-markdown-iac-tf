module "github_repository_main" {
    source =                    "./modules/github_repository"
    name                        = var.repo_name
    description                 = var.repo_description
    visibility                  = var.repo_visibility
    auto_init                   = false   

}

module "github_repository_tf" {
    source =                    "./modules/github_repository"
    name                        = "${var.repo_name}-iac-tf"
    description                 = "iac terraform for ${var.repo_name}"
    visibility                  = var.repo_visibility
    auto_init                   = false
}



