data "template_file" "config" {
  template = file("${path.module}/templates/kind_config.yaml")

  vars = {
    http_port   = var.http_port
    https_port  = var.https_port
    extra_nodes = var.extra_nodes
  }
}

resource "kind" "current" {
  name        = var.metadata_name
  node_image  = var.node_image
  kind_config = data.template_file.config.rendered
}
