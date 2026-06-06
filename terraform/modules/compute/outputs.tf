output "alb_dns_name" {
  value = aws_lb.backend.dns_name
}

output "alb_arn" {
  value = aws_lb.backend.arn
}

output "target_group_arn" {
  value = aws_lb_target_group.backend.arn
}

output "backend_security_group_id" {
  value = aws_security_group.backend.id
}

output "alb_security_group_id" {
  value = aws_security_group.alb.id
}

output "autoscaling_group_name" {
  value = aws_autoscaling_group.backend.name
}

output "alb_arn_suffix" {
  value = aws_lb.backend.arn_suffix
}

output "ecr_repository_url" {
  value = aws_ecr_repository.backend.repository_url
}