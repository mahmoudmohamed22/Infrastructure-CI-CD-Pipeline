
variable "eks_name" {
  type = string
  default = "eks"
}

variable "capacity_type" {
 type = string
 default = "ON_DEMAND"
}

variable "instance_types" {
 type = string
 default = "t3.small"
}



 variable "private_sub_1" {
    type=string
  }
  variable "private_sub_2" {
    type=string
  }
   variable "public_sub_1" {
    type=string
  }
  variable "public_sub_2" {
    type=string
  }

   variable "VPC_CIDR" {
    type=string
  }

   variable "vpc_id" {
    type=string
  }

   variable "bastionhost-SG-id" {
    type=string
  }


variable "key" {
    type=string
  }



variable "public_sub_cidr" {
    type=string
  }






