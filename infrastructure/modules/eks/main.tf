resource "aws_eks_cluster" "eks" {

 name = var.cluster_name

 role_arn = var.cluster_role_arn

 version = "1.33"

 vpc_config {

  subnet_ids = var.subnet_ids

  security_group_ids = [
    var.security_group_id
  ]
 }
}

resource "aws_eks_node_group" "workers" {

 cluster_name = aws_eks_cluster.eks.name

 node_group_name = "worker-group"

 node_role_arn = var.node_role_arn

 subnet_ids = var.subnet_ids

 scaling_config {

  desired_size = 2

  max_size = 4

  min_size = 2
 }
}


