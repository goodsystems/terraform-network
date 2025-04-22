variable "region" {
  default     = "us-east-1"
  description = "Default region"
  type        = string
}

variable "environment_name" {
  description = "Default environment type"
  type        = string
}

variable "environment_slug" {
  description = "Default environment slug"
  type        = string
}

variable "project" {
  description = "Default project name"
  type        = string
}

variable "name" {
  description = "Name of the VPC"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "az_count" {
  default     = 3
  description = "Number of availability zones"
  type        = number
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "public_cidrs" {
  description = "CIDRs for the Public subnets in the VPC"
  type        = list(string)
}

variable "map_public_ip_on_launch" {
  description = "Map public IP on launch"
  type        = bool
}

variable "private_cidrs" {
  description = "CIDRs for the Private subnets in the VPC"
  type        = list(string)
}