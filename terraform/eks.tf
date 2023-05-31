module "my_eks" {
 source = "./eks_module"

private_sub_1= module.my_network.priv_sub_1
private_sub_2 =module.my_network.priv_sub_2
public_sub_1= module.my_network.pub_sub_1
public_sub_2 =module.my_network.pub_sub_2
VPC_CIDR=var.VPC_CIDR
vpc_id=module.my_network.vpc_id
bastionhost-SG-id=module.my_network.public_SG

key=module.my_secrets_manager.key_name
public_sub_cidr=module.my_network.public_sub_cidr
}