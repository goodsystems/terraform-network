environment_name        = "staging"
environment_slug        = "stg"
name                    = "Staging"
cidr_block              = "172.28.0.0/16"
azs                     = ["us-east-1a", "us-east-1b", "us-east-1d"]
public_cidrs            = ["172.28.224.0/24", "172.28.225.0/24", "172.28.226.0/24"]
map_public_ip_on_launch = false
private_cidrs           = ["172.28.96.0/19", "172.28.128.0/19", "172.28.160.0/19"]