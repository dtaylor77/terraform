resource "aws_vpc" "internal-vpc" {
  count            = var.vpc_type == "internal" ? 1 : 0
  cidr_block       = var.internal_cidr_block_vpc
  instance_tenancy = "default"

  tags = {
    Name = "${var.vpc_type}-vpc"
  }
}

resource "aws_vpc" "external-vpc" {
  count            = var.vpc_type == "external" ? 1 : 0
  cidr_block       = var.external_cidr_block_vpc
  instance_tenancy = "default"

  tags = {
    Name = "${var.vpc_type}-vpc"
  }
}

resource "aws_subnet" "subnet" {
  count      = var.vpc_type == "internal" || var.vpc_type == "external" ? 1 : 0
  vpc_id     = var.vpc_type == "internal" ? aws_vpc.internal-vpc[count.index].id : aws_vpc.external-vpc[count.index].id
  cidr_block = var.vpc_type == "internal" ? var.internal_cidr_block_subnet : var.external_cidr_block_subnet

  tags = {
    Name      = "${var.vpc_type}-subnet"
    sensitive = true
  }


}
