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

# Can't apply branch protection to private "free" repositories
# module "github_branch_protection_main" {
#     source                      = "./modules/github_branch_protection"
#     repository_id               = module.github_repository_main.node_id
#     pattern                     = var.branch_protection_pattern
#     enforce_admins              = true
# }

