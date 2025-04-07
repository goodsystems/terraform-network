#default ls vpc settings for us-east-1 oldest account 
module "vpc" {
  source  = "registry.opentofu.org/aws-ia/vpc/aws"
  version = "v4.4.4"


  name                                 = var.name
  cidr_block                           = var.cidr_block
  az_count                             = var.az_count
  vpc_assign_generated_ipv6_cidr_block = false
  azs                                  = var.azs
  subnets = {
    public = {
      name_prefix               = "public"
      cidrs                     = var.public_cidrs
      connect_to_igw            = true
      map_public_ip_on_launch   = var.map_public_ip_on_launch
      nat_gateway_configuration = "all_azs"

    }
    # IPv4 only subnet
    private = {
      cidrs                   = var.private_cidrs
      connect_to_public_natgw = true

    }
  }
}
