variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "starttech"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "prod"
}

variable "my_ip" {
  description = "Your public IP address in CIDR format for SSH access"
  type        = string
}

variable "common_tags" {
  type = map(string)

  default = {
    Project     = "StartTech"
    Environment = "prod"
    ManagedBy   = "Terraform"
  }
}