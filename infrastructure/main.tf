module "vpc" {

 source = "./modules/vpc"

 vpc_cidr = var.vpc_cidr

 public_subnets = var.public_subnets

 private_subnets = var.private_subnets
}

module "sg" {

 source = "./modules/security-group"

 vpc_id = module.vpc.vpc_id
}

module "iam" {

 source = "./modules/iam"
}

module "eks" {

 source = "./modules/eks"

 cluster_name = var.cluster_name

 subnet_ids = module.vpc.private_subnet_ids

 cluster_role_arn = module.iam.eks_role_arn

 node_role_arn = module.iam.node_role_arn

 security_group_id = module.sg.eks_sg_id
}


