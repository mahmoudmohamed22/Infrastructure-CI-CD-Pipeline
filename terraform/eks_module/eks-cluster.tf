resource "aws_eks_cluster" "eks_cluster" {
  name     = var.eks_name
  role_arn = aws_iam_role.eks_role.arn
 
  vpc_config {
    subnet_ids = [var.private_sub_1, var.private_sub_2]
    security_group_ids = [aws_security_group.eks-sg.id]
    endpoint_public_access = false
    endpoint_private_access= true
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSClusterPolicy
    
  ]
}

