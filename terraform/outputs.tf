output "vpc_id" {
  value = module.networking.vpc_id
}

output "public_subnet_ids" {
  value = module.networking.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.networking.private_subnet_ids
}

output "alb_dns_name" {
  value = module.compute.alb_dns_name
}

output "autoscaling_group_name" {
  value = module.compute.autoscaling_group_name
}

output "frontend_bucket_name" {
  value = module.storage.frontend_bucket_name
}

output "cloudfront_distribution_id" {
  value = module.storage.cloudfront_distribution_id
}

output "cloudfront_domain_name" {
  value = module.storage.cloudfront_domain_name
}

output "redis_endpoint" {
  value = module.cache.redis_endpoint
}

output "dashboard_name" {
  value = module.monitoring.dashboard_name
}

output "log_group_name" {
  value = module.monitoring.log_group_name
}

output "ecr_repository_url" {
  value = module.compute.ecr_repository_url
}