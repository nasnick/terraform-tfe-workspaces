resource "tfe_workspace" "main" {
  name              = var.workspace_name
  organization      = var.org
  auto_apply        = var.auto_apply
  terraform_version = var.terraform_version
  working_directory = var.working_directory
  
  vcs_repo {
    identifier     = var.vcs_repo_identifier
    oauth_token_id = tfe_oauth_client.client.oauth_token_id
  }
}

resource "tfe_oauth_client" "client" {
  organization     = var.TFE_ORGAISATION
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.GITHUB_OAUTH_APP_TOKEN
  service_provider = "github"
}