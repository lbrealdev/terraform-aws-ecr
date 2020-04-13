# terraform-aws-ecr

### Usage

```
provider "aws" {
  region = "eu-central-1"
}

module "vpc" {
  source = "git::github.com/lbrealdev/terraform-aws-ecr"

  ecr_repositories = {
    repodev = "ecrrepodev"
    repopre = "ecrrepopre"
    repopro = "ecrrepopro"
  }
}
```