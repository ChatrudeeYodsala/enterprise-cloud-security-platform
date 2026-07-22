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
- Successfully registered the EC2 instance as an AWS Systems Manager managed node.
- Established secure remote administration using AWS Systems Manager Session Manager without requiring a public IP address or SSH access.
- Verified Amazon CloudWatch basic monitoring for the EC2 instance.
- Verified AWS CloudTrail recorded infrastructure provisioning events for auditing purposes.
- Explored AWS Backup service components.
- Reviewed Backup Vaults, Backup Plans, and Recovery Point architecture.
- Prepared the environment for future backup policy implementation.

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
- Validated secure connectivity through Interface VPC Endpoints and IAM instance profile authentication.
- Verified the EC2 instance appeared as an online managed node in AWS Systems Manager.
- Verified successful Session Manager connection.
- Verified secure shell access without exposing SSH to the internet.
- Verified the Amazon SSM Agent was operational.
- Verified EC2 metrics were available in Amazon CloudWatch.
- Verified AWS CloudTrail recorded infrastructure activity.
- Verified AWS Backup service availability.
- Verified access to Backup Vaults and Backup Plans.

---

## Result

Successfully deployed a secure EC2 instance within a private subnet and established secure administrative access using AWS Systems Manager Session Manager. The environment follows enterprise cloud security best practices by eliminating direct SSH exposure while maintaining secure operational access.

---

## Lessons Learned

- IAM roles provide secure credential management without storing access keys on EC2 instances.
- Deploying compute resources in private subnets reduces the external attack surface.
- Interface VPC Endpoints enable private communication with AWS managed services.
- AWS Systems Manager architecture requires proper IAM, networking, DNS, and endpoint configuration to enable secure remote administration.
- AWS Systems Manager Session Manager enables secure remote administration without requiring public IP addresses or inbound SSH access.
- Combining IAM instance profiles, Interface VPC Endpoints, and private networking provides a secure and scalable management architecture.
- Amazon CloudWatch provides operational visibility into EC2 performance.
- AWS CloudTrail records management events, supporting auditing and security investigations.
- AWS Backup centralizes backup management across AWS services.
- Backup Plans define backup schedules, retention policies, and protected resources.