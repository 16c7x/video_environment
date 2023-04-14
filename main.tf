# Main config

provider "aws" {
  region = "${var.aws_region}"
}

# Contain all the networking configuration for readability
module "networking" {
  source    = "./modules/networking"
  id        = "demo"
  project   = "demo"
  allow     = concat(["10.128.0.0/9"], [ "109.151.183.6/32", "${var.local_ip}" ])
  to_create = true
  subnet    = null
}
