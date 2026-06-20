# eks-terraform-jenkins-project
Designed and implemented a production-style Kubernetes platform on AWS using Infrastructure as Code (Terraform) and CI/CD automation (Jenkins). The project provisions a complete Amazon EKS environment, deploys containerized applications, and automates build, test, security scanning, and deployment workflows.

Key Features:

Provisioned AWS infrastructure using Terraform modules:
VPC, Public & Private Subnets
Internet Gateway & NAT Gateway
Route Tables and Security Groups
Amazon EKS Cluster and Managed Node Groups
IAM Roles and Policies

Implemented CI/CD pipeline using Jenkins:
Source code integration with GitHub
Maven build and unit testing
SonarQube code quality analysis
Trivy vulnerability scanning
Docker image creation and tagging
Image push to Amazon ECR
Automated deployment to Amazon EKS

Kubernetes Deployment:
Deployments, Services, ConfigMaps, and Secrets
Rolling updates and rollback support
Horizontal Pod Autoscaler (HPA)
Ingress configuration with AWS Load Balancer

Monitoring & Security:
Prometheus and Grafana integration
CloudWatch logging and monitoring
IAM least-privilege access model
Container image vulnerability scanning

Tools & Technologies:
AWS (EKS, ECR, IAM, VPC, EC2, CloudWatch)
Terraform
Jenkins
Docker
Kubernetes
Helm
GitHub
Maven
SonarQube
Trivy
Prometheus
Grafana

Outcome:
Successfully automated end-to-end infrastructure provisioning and application deployment, reducing manual intervention and enabling scalable, secure, and repeatable deployments in a Kubernetes-based AWS environment.
