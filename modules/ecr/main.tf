resource "aws_ecr_repository" "ecr" {
  for_each             = { for name in var.names : name => name }

  name                 = each.value
  image_tag_mutability = lookup(var.config[0], "mutable", null)

  dynamic "image_scanning_configuration" {
    for_each = var.config
    content {
      scan_on_push = image_scanning_configuration.value["scan_on_push"]
    }
  }

  tags = merge(local.tags, { Name = each.key })

}
