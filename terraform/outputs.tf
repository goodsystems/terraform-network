output "vpc_id" {
  value = module.vpc.vpc_attributes.id
}

output "private_subnets_id" {
  value = [for subnet in module.vpc.private_subnet_attributes_by_az : subnet.id]
}
