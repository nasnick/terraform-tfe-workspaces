resource "tfe_workspace" "main" {
  name              = var.workspace_name
  organization      = var.org
  auto_apply        = var.auto_apply
  terraform_version = var.terraform_version
  working_directory = var.working_directory
  
  vcs_repo {
    identifier     = var.vcs_repo_identifier
    oauth_token_id = var.oauth_token_id
  }
}
