# Enterprise Cloud Infrastructure on AWS

Enterprise cloud infrastructure project demonstrating secure AWS architecture, Linux server hardening, cloud monitoring, and infrastructure automation following enterprise infrastructure best practices.

---

## Project Overview

This project demonstrates the design and implementation of a secure enterprise cloud infrastructure on Amazon Web Services (AWS).

The environment was designed following enterprise security principles by combining identity and access management, secure network architecture, private compute deployment, Linux security hardening, cloud monitoring, and infrastructure automation.

The project emphasizes secure administration through AWS Systems Manager, layered security, operational visibility, and automation without exposing management services directly to the public internet.

---

## Architecture

```text
                    Internet
                        │              
                Internet Gateway
                        │
               Public Route Table
                        │
         ┌──────────────────────────┐
         │       Amazon VPC         │
         │      10.0.0.0/16         │
         │                          │
         │ Public Subnet            │
         │ 10.0.1.0/24              │
         │                          │
         │ Private Subnet           │
         │ 10.0.2.0/24              │
         │        │                 │
         │        ▼                 │
         │ Ubuntu EC2 Instance      │
         │        │                 │
         │        ▼                 │
         │ AWS Systems Manager      │
         └──────────────────────────┘
                        │
        ┌───────────────┴───────────────┐
        │                               │
 Amazon CloudWatch              AWS CloudTrail
 Monitoring & Alarms             Audit Logging
```

---

## Project Objectives

- Design a secure enterprise cloud infrastructure on AWS
- Deploy Linux workloads inside a private subnet
- Implement enterprise network segmentation
- Apply Linux security hardening best practices
- Configure cloud-native monitoring and operational visibility
- Automate routine infrastructure administration tasks

---

## Technology Stack

### AWS Services

- Amazon EC2
- Amazon VPC
- AWS IAM
- AWS Systems Manager
- Amazon CloudWatch
- AWS CloudTrail
- AWS Backup

### Operating System

- Ubuntu Server 24.04 LTS

### Networking

- VPC
- Public & Private Subnets
- Internet Gateway
- Route Tables
- Security Groups
- Network ACLs
- Interface VPC Endpoints

### Security

- IAM
- Multi-Factor Authentication (MFA)
- UFW Firewall
- OpenSSH
- Least Privilege Access Control

### Automation

- Bash
- Linux System Administration

---

## Security Features

- IAM users and groups with least privilege permissions
- Multi-Factor Authentication (MFA)
- Private EC2 deployment
- AWS Systems Manager Session Manager
- SSH hardening
- UFW host firewall
- Secure file permissions
- Kernel network hardening
- Security auditing
- CloudTrail activity logging

---

## Monitoring & Operations

Implemented operational monitoring using AWS native services.

- CloudWatch Metrics
- CloudWatch Dashboard
- CloudWatch Alarms
- AWS Systems Manager Inventory
- AWS Systems Manager State Manager
- AWS Systems Manager Run Command
- AWS Systems Manager Session Manager
- AWS Backup

---

## Infrastructure Automation

Developed Bash automation scripts for routine infrastructure administration.

| Script | Description |
|---------|-------------|
| `health-check.sh` | Performs server health checks |
| `security-audit.sh` | Audits Linux security configuration |
| `system-report.sh` | Generates consolidated system reports |
| `service-status.sh` | Verifies critical service availability |

---

## Documentation

| Document | Description |
|----------|-------------|
| Identity Security | IAM users, groups, MFA, and access control |
| Network Architecture | Enterprise VPC design and segmentation |
| Secure Compute | EC2 deployment, VPC Endpoints, and Systems Manager |
| Linux Security Hardening | SSH hardening, firewall, logging, permissions |
| AWS Monitoring | CloudWatch, Systems Manager, CloudTrail, Backup |
| Infrastructure Automation | Bash operational automation scripts |

---

## Key Implementation Phases

### Identity & Access Management

- IAM Users
- IAM Groups
- MFA
- Least Privilege

### Enterprise Network Architecture

- Amazon VPC
- Public & Private Subnets
- Route Tables
- Security Groups
- Network ACLs

### Secure Compute Deployment

- Ubuntu EC2
- IAM Role
- Systems Manager
- Interface VPC Endpoints

### Linux Security Hardening

- SSH Hardening
- UFW Firewall
- Authentication Security
- System Logging
- Kernel Hardening
- File Permission Auditing

### AWS Monitoring

- CloudWatch
- CloudWatch Alarms
- Dashboard
- CloudTrail
- AWS Backup
- Systems Manager Inventory

### Infrastructure Automation

- Health Check Automation
- Security Audit Automation
- System Reporting
- Service Monitoring

---

## Screenshots

Example implementation screenshots are available in the `screenshots/` directory, covering:

- IAM Configuration
- Enterprise VPC
- EC2 Deployment
- Systems Manager
- CloudWatch Dashboard
- CloudTrail
- AWS Backup
- Linux Security Hardening
- Infrastructure Automation

---

## Skills Demonstrated

- AWS Infrastructure
- Cloud Networking
- Identity & Access Management
- Linux Administration
- Linux Security Hardening
- Infrastructure Monitoring
- Systems Management
- Infrastructure Automation
- Bash Scripting
- Enterprise Documentation
- Cloud Security

---

## Lessons Learned

This project demonstrates how multiple AWS services can be integrated to build a secure and manageable enterprise infrastructure.

Key areas of learning included designing secure cloud networks, deploying Linux workloads in private subnets, implementing layered security controls, managing infrastructure through AWS Systems Manager, monitoring cloud resources with CloudWatch, and automating operational tasks using Bash.

---

## Future Improvements

- Infrastructure as Code using Terraform
- Configuration Management with Ansible
- CloudWatch Agent integration
- Patch Management automation
- Centralized logging
- CI/CD pipeline integration
