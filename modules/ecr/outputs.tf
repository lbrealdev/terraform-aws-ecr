locals {
  tags = {
    Description = "services-repository"
    Project     = "caucion"
    Environment = "dev"
    Product     = "Amazon ECR"
    Createdby   = "technician_iaas"
  }
  urls = values(aws_ecr_repository.ecr)[*].repository_url
}

output "repository_url" {
  value = local.urls
}