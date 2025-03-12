variable "region" {
  default     = "us-east-1"
  description = "default region"
}

variable "env_type" {
  description = "default environment type"
}

variable "name" {
  description = "Name of the VPC"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
}

variable "az_count" {
  default     = 3
  description = "Number of availability zones"
}

variable "azs" {
  description = "List of availability zones"
}

variable "public_cidrs" {
  description = "CIDRs for the Public subnets in the VPC"
  type        = list(string)
}

variable "map_public_ip_on_launch" {
  description = "Map public IP on launch"
}

variable "private_cidrs" {
  description = "CIDRs for the Private subnets in the VPC"
  type        = list(string)
}