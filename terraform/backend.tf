terraform {
  backend "remote" {
    organization = "my-org"
    hostname = "app.terraform.io"
    workspaces {
      prefix = "my-org-"
    }
    token = "Wq73jtM5at6PEg.atlasv1.21GLHd1bk0Gt7TMuAI6Kj70mEw7CvB7wL6Re2nljIyycm6hiIuyOCAB87iMxEDyFeYk"
  }
}

