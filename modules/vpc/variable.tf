variable "vpc_type" {
  description = "VPC type name should either be internal or external"
  type        = string

  validation {
    condition     = var.vpc_type == "internal" || var.vpc_type == "external"
    error_message = "vpc_type must be either 'internal' or 'external'"
  }
}

variable "internal_cidr_block_vpc" {
}

variable "external_cidr_block_vpc" {
}

variable "internal_cidr_block_subnet" {
}

variable "external_cidr_block_subnet" {
}
