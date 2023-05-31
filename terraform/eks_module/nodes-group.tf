
resource "aws_eks_node_group" "private_nodes" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "private-nodes"
  node_role_arn   = aws_iam_role.nodes_role.arn

  subnet_ids = [
    var.private_sub_1,
    var.private_sub_2
  ]

  capacity_type  = var.capacity_type
  instance_types = [var.instance_types]

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }

  update_config {
    max_unavailable = 1
  }

  labels = {
    role = "general"
  }

   remote_access {
    ec2_ssh_key = var.key
  }
  # taint {
  #   key    = "team"
  #   value  = "devops"
  #   effect = "NO_SCHEDULE"
  # }

  #  launch_template {
  #   name = aws_launch_template.tm_worker_node.name_prefix
  #   version = "$Latest"
  # }

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
  ]
}

# resource "aws_launch_template" "tm_worker_node" {
#   name_prefix   = "workernode-template"
#   image_id      = "ami-053b0d53c279acc90"
#   user_data = <<-EOF
#       #!/bin/bash

#       apt update
#       apt install -y docker.io
#       #systemctl enable --now docker
#       sudo chmod 777 /var/run/docker.sock | base64
#   EOF
# }