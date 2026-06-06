# StartTech Infrastructure Deployment

## Overview

This repository contains the Infrastructure as Code (IaC) implementation for the StartTech full-stack application using Terraform and GitHub Actions.

The infrastructure provisions and manages AWS resources required to support a scalable, secure, and highly available application environment.

---

## Architecture Components

### Networking

* VPC
* Public Subnets
* Private Subnets
* Internet Gateway
* NAT Gateway
* Route Tables

### Compute

* EC2 Launch Template
* Auto Scaling Group
* Application Load Balancer
* Target Groups
* Health Checks

### Storage

* Amazon S3 Static Website Hosting
* CloudFront Content Delivery Network
* Origin Access Control

### Container Registry

* Amazon Elastic Container Registry (ECR)

### Caching

* Amazon ElastiCache Redis

### Monitoring

* CloudWatch Log Groups
* CloudWatch Dashboard
* CloudWatch Alarms

### Security

* IAM Roles and Policies
* Security Groups
* Principle of Least Privilege

---

## Repository Structure

```text
starttech-infra/
├── .github/
│   └── workflows/
│       └── infrastructure-deploy.yml
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── modules/
├── monitoring/
├── scripts/
└── README.md
```

## Infrastructure Deployment

### Prerequisites

* Terraform
* AWS CLI
* AWS Account
* GitHub Actions

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Review Deployment Plan

```bash
terraform plan
```

### Deploy Infrastructure

```bash
terraform apply
```

---

## CI/CD Pipeline

Infrastructure deployment automation is implemented using GitHub Actions.

The workflow performs:

* Terraform Format Validation
* Terraform Initialization
* Terraform Validation
* Terraform Planning

---

## Monitoring

CloudWatch is configured to provide:

* Application Logs
* Infrastructure Monitoring
* Dashboard Visualizations
* Alarm Notifications

---

## Security Controls

* IAM Role-Based Access
* Private Subnet Deployment
* Security Group Restrictions
* CloudFront Origin Access Control
* ECR Image Scanning

---

## Author

Olaoluwa Aboluwoye

AltSchool Africa Cloud Engineering Program
