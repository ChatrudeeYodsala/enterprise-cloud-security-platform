# Secure Compute Deployment

## Overview

Deployed a secure Amazon EC2 instance within a private subnet following enterprise cloud security best practices. The compute environment was configured to support secure management through AWS Systems Manager using IAM roles and private VPC connectivity.

---

## Objective

- Deploy a secure EC2 instance
- Eliminate direct SSH access
- Implement IAM-based instance management
- Configure AWS Systems Manager connectivity
- Follow the principle of least privilege

---

## Environment

- Amazon EC2
- Ubuntu Server 24.04 LTS
- IAM Instance Profile
- AWS Systems Manager
- Interface VPC Endpoints
- Amazon EBS

---

## Architecture

```text
IAM User
    │
AWS Systems Manager
    │
Interface VPC Endpoints
    │
Private EC2 Instance
```

---

## Implementation

- Launched an Ubuntu Server 24.04 LTS Amazon EC2 instance.
- Deployed the instance within the private subnet.
- Attached the EC2-SSM-Role IAM instance profile.
- Disabled public IP assignment.
- Configured secure instance management using AWS Systems Manager architecture.
- Created Interface VPC Endpoints for Systems Manager communication.

---

## Verification

Verified the following configurations:

- EC2 instance successfully launched.
- Ubuntu Server 24.04 LTS deployed.
- IAM instance profile attached.
- Private IP assigned.
- Public IP disabled.
- Systems Manager VPC Endpoints created.
- Private DNS enabled for VPC Endpoints.

---

## Result

Successfully deployed a secure EC2 instance following enterprise cloud security architecture. The environment was prepared for secure management using AWS Systems Manager without exposing administrative access to the public internet.

---

## Lessons Learned

- IAM roles provide secure credential management without storing access keys on EC2 instances.
- Deploying compute resources in private subnets reduces the external attack surface.
- Interface VPC Endpoints enable private communication with AWS managed services.
- AWS Systems Manager architecture requires proper IAM, networking, DNS, and endpoint configuration to enable secure remote administration.