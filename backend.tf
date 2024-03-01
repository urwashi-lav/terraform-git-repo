terraform {
  backend "remote" {
    organization = "web"

    workspaces {
      name = "dev-prod"
    }
  }
}

