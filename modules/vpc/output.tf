output "vpc_id_internal" {
  value = var.vpc_type == "internal" ? aws_vpc.internal-vpc[0].id : 0
}

output "vpc_id_external" {
  value = var.vpc_type == "external" ? aws_vpc.external-vpc[0].id : 0
}

output "subnet_id" {
  value = aws_subnet.subnet[0].id
}

output "vpc_arn_internal" {
  value = var.vpc_type == "internal" ? aws_vpc.internal-vpc[0].arn : 0
}

output "vpc_arn_external" {
  value = var.vpc_type == "external" ? aws_vpc.external-vpc[0].arn : 0
}

output "subnet_arn" {
  value = aws_subnet.subnet[0].arn
}

output "subnet_tag_name" {
  value = aws_subnet.subnet[0].tags_all
}
