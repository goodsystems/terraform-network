output "vpc_id" {
  value       = module.vpc.vpc_attributes.id
  description = "The ID of the VPC"
}

output "private_subnets_id" {
  value       = [for subnet in module.vpc.private_subnet_attributes_by_az : subnet.id]
  description = "The IDs of the private subnets"
}

output "public_subnets_id" {
  value       = [for subnet in module.vpc.public_subnet_attributes_by_az : subnet.id]
  description = "The IDs of the public subnets"
}