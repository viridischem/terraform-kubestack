module "node_pool" {
  providers = {
    kubernetes = kubernetes.eks
  }

  source = "./node_pool"

  metadata_labels   = var.metadata_labels
  eks_metadata_tags = local.eks_metadata_tags

  cluster_name    = aws_eks_cluster.current.name
  node_group_name = "default"

  role_arn = aws_iam_role.node.arn

  subnet_ids = aws_subnet.current.*.id

  instance_type = var.instance_type
  desired_size  = var.desired_capacity
  max_size      = var.max_size
  min_size      = var.min_size

  disk_size = var.root_device_volume_size

  # force node_pool to depend on aws-auth configmap
  depends-on-aws-auth = {
    name      = kubernetes_config_map.current.metadata[0].name
    namespace = kubernetes_config_map.current.metadata[0].namespace
  }
}
