data "github_user" "user" {
  username = ""
}

variable "username" {
  type = string
  default = ""
}

output "id" {
  value = data.github_user.user.id
}

output "node_id" {
  value = data.github_user.user.node_id
}

output "login" {
  value = data.github_user.user.login
}

output "avatar_url" {
  value = data.github_user.user.avatar_url
}

output "gravatar_id" {
  value = data.github_user.user.gravatar_id
}

output "site_admin" {
  value = data.github_user.user.site_admin
}

output "name" {
  value = data.github_user.user.name
}

output "company" {
  value = data.github_user.user.company
}

output "blog" {
  value = data.github_user.user.blog
}

output "location" {
  value = data.github_user.user.location
}

output "email" {
  value = data.github_user.user.email
}

output "gpg_keys" {
  value = data.github_user.user.gpg_keys
}

output "ssh_keys" {
  value = data.github_user.user.ssh_keys
}

output "bio" {
  value = data.github_user.user.bio
}

output "public_repos" {
  value = data.github_user.user.public_repos
}

output "public_gists" {
  value = data.github_user.user.public_gists
}

output "followers" {
  value = data.github_user.user.followers
}

output "following" {
  value = data.github_user.user.following
}

output "created_at" {
  value = data.github_user.user.created_at
}

output "updated_at" {
  value = data.github_user.user.updated_at
}

output "suspended_at" {
  value = data.github_user.user.suspended_at
}
