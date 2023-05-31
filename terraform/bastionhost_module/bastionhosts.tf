
# data "aws_secretsmanager_secret" "user_credentials" {
#   arn = var.terraform_user_secret_arn

# }

# data "aws_secretsmanager_secret_version" "secret_version" {
#   secret_id = data.aws_secretsmanager_secret.user_credentials.id
# }
resource "aws_instance" "bastionhost1" {
  ami                     = "ami-053b0d53c279acc90"
  instance_type           = "t2.micro"
  subnet_id               = var.bastionhost_subnet_id
  vpc_security_group_ids  = [var.security_group_id]
  iam_instance_profile    = var.test_instance_profile_name
  key_name                = var.key_name
  user_data = <<-EOF
              #!/bin/bash
              #copy key from secretmanager to machine
              echo $(aws secretsmanager get-secret-value --secret-id my-private-key --query SecretString --output text) > /home/ubuntu/${var.key_name}.pem 
              chown ec2-user:ec2-user ${var.key_name}.pem
              chmod 400 /home/ec2-user/${var.key_name}.pem
             
              # install kubectl
              
              curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
              sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
              chmod +x kubectl
              mkdir -p ~/.local/bin
              mv ./kubectl ~/.local/bin/kubectl

              # install aws cli 
              sudo apt-get install unzip
              curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
              unzip awscliv2.zip
              sudo ./aws/install

              #sudo mkdir ~/jenkin-k8s
              # sudo mkdir /home/ubuntu/.aws/
              # sudo touch /home/ubuntu/.aws/credentials
              
              #aws eks update-kubeconfig --region us-east-1 --name ${var.eks_cluster_name}
              EOF
   


  provisioner "file" {
              connection {
                    type        = "ssh"
                    user        = "ubuntu"
                    private_key = file("~/Documents/Infrastructure-CI-CD-P/terraform/tf_key.pem")
                    host        = self.public_ip
                  }

    source      = "~/Documents/Infrastructure-ITI-DevOps/Jenkins-k8s"
    destination = "/home/ubuntu/jenkin-k8s"
  }


  tags = {
    Name = "bastion-host"
  }
  
}


