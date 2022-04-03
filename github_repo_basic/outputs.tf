output "main_repo" {
    value = {
        full_name           = module.github_repository_main.full_name
        ssh_clone_url       = module.github_repository_main.ssh_clone_url
        node_id             = module.github_repository_main.node_id
        repo_id             = module.github_repository_main.repo_id
        branches            = module.github_repository_main.branches
        # protected_branches  = module.github_branch_protection_main.protected_branches
    }
}

output "iac_repo" {
    value = {
        full_name           = module.github_repository_tf.full_name
        ssh_clone_url       = module.github_repository_tf.ssh_clone_url
        node_id             = module.github_repository_tf.node_id
        repo_id             = module.github_repository_tf.repo_id
        branches            = module.github_repository_tf.branches
    }
}