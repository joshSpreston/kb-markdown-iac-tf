variable "github_owner" {
    type    = string  
}

variable "repo_name" {
  type      = string
}

variable "repo_description" {
  type      = string
}

variable "repo_visibility" {
  type      = string
}

variable "tf_repo_visibility" {
  type      = string
  default   = "private"
}

variable "branch_protection_pattern" {
  type      = string
  default   = "main"
}

variable "branch_protection_enforce_admins" {
  type      = string
  default   = true
}