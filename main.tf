# module

module "vpc-internal" {
  source = "./modules/vpc"

  external_cidr_block_vpc    = "10.11.0.0/16"
  vpc_type                   = "internal"
  external_cidr_block_subnet = "10.11.1.0/24"
  internal_cidr_block_subnet = "10.2.1.0/24"
  internal_cidr_block_vpc    = "10.2.0.0/16"

}

module "vpc-external" {
  source = "./modules/vpc"

  external_cidr_block_vpc    = "10.11.0.0/16"
  vpc_type                   = "external"
  external_cidr_block_subnet = "10.11.1.0/24"
  internal_cidr_block_subnet = "10.2.1.0/24"
  internal_cidr_block_vpc    = "10.2.0.0/16"

}