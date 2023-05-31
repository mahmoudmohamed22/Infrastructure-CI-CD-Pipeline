resource "aws_security_group" "eks-sg" {
  vpc_id = var.vpc_id
  ingress {
    cidr_blocks = [
      var.public_sub_cidr
    ]
    
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    name = "eks-sg"
  }
}