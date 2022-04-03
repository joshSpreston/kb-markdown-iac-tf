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
    visibility                  = var.tf_repo_visibility
    auto_init                   = false
}

module "github_current_user" {
    source                      = "./modules/github_user_datasource"
    username                    = var.github_owner  
}

module "github_branch_protection_tf" {
    source                      = "./modules/github_branch_protection"
    repository_id               = module.github_repository_tf.node_id
    pattern                     = var.branch_protection_pattern
    enforce_admins              = true
    push_restrictions           = [module.github_current_user.github_user.user.login]
}

