resource "aws_security_group" "eks" {

 name = "eks-sg"

 vpc_id = var.vpc_id
}

resource "aws_vpc_security_group_ingress_rule" "https" {

 security_group_id = aws_security_group.eks.id

 from_port = 443

 to_port = 443

 ip_protocol = "tcp"

 cidr_ipv4 = "0.0.0.0/0"
}


