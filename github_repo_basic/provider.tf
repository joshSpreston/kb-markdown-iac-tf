terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
    gitlab = {
      source  = "gitlabhq/gitlab"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    owner = var.github_owner
}

provider "gitlab" {
  token = var.gitlab_token
}