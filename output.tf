output "vpc_id_internal" {
  value = module.vpc-internal.vpc_id_internal
}

output "vpc_id_external" {
  value = module.vpc-external.vpc_id_external
}

output "subnet_id_internal" {
  value = module.vpc-internal.subnet_id
}

output "subnet_id_external" {
  value = module.vpc-external.subnet_id
}

output "vpc_arn_internal" {
  value = module.vpc-internal.vpc_arn_internal
}

output "vpc_arn_external" {
  value = module.vpc-external.vpc_arn_external
}

output "internal_subnet_arn" {
  value = module.vpc-internal.subnet_arn
}

output "external_subnet_arn" {
  value = module.vpc-external.subnet_arn
}

output "subnet_tag_name" {
  value = module.vpc-internal.subnet_tag_name
}