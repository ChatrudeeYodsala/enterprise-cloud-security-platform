# Enterprise Cloud Network Architecture

## Overview

Designed and implemented a secure AWS network architecture using Amazon VPC with public and private subnet segmentation following enterprise cloud security best practices. The infrastructure establishes a secure networking foundation for deploying private compute resources while supporting secure connectivity to AWS managed services.

---

## Objective

- Design a secure enterprise cloud network architecture
- Create isolated public and private network segments
- Implement layered network security controls
- Configure secure routing between network components
- Prepare the environment for secure EC2 deployment
- Enable private DNS support for AWS managed services

---

## Environment

- Amazon VPC
- Amazon Internet Gateway
- Public and Private Subnets
- Route Tables
- Security Groups
- Network ACLs
- Amazon VPC DNS
- AWS Interface VPC Endpoints (Preparation)

---

## Architecture

```text
Internet
    │
Internet Gateway
    │
Public Route Table
    │
┌───────────────────────────────────────────┐
│ enterprise-vpc (10.0.0.0/16)              │
│                                           │
│ Public Subnet (10.0.1.0/24)               │
│                                           │
│ Private Subnet (10.0.2.0/24)              │
│                                           │
│ Security Group                            │
│ Network ACL                               │
└───────────────────────────────────────────┘

VPC DNS Configuration
├── DNS Resolution : Enabled
└── DNS Hostnames  : Enabled
```

---

## Implementation

- Created an enterprise Amazon VPC using the 10.0.0.0/16 CIDR block.
- Configured public and private subnet segmentation to separate external and internal network resources.
- Attached an Amazon Internet Gateway to provide internet connectivity for public network resources.
- Configured a public route table with a default route to the Internet Gateway.
- Associated the public subnet with the public route table.
- Configured a dedicated Security Group for secure compute resources following the principle of least privilege.
- Created and associated a Network ACL with the private subnet to provide an additional layer of network protection.
- Enabled VPC DNS Resolution and DNS Hostnames to support private DNS functionality required by AWS managed services and Interface VPC Endpoints.
- Created a dedicated private route table and associated it with the private subnet to isolate internal network traffic.

---

## Verification

Verified the following configurations:

- Enterprise VPC was successfully created.
- Public and private subnets were correctly associated with the VPC.
- Internet Gateway was successfully attached.
- Public route table contained the default route (0.0.0.0/0) pointing to the Internet Gateway.
- Public subnet was associated with the public route table.
- Security Group configuration followed the intended security design.
- Network ACL was successfully associated with the private subnet.
- DNS Resolution was enabled.
- DNS Hostnames was enabled.

---

## Result

Successfully deployed a secure enterprise cloud network foundation with network segmentation, layered security controls, and DNS configuration to support secure private connectivity for AWS managed services. The environment is prepared for secure EC2 deployment using AWS Systems Manager without exposing management services to the public internet.

---

## Lessons Learned

- Network segmentation using public and private subnets improves security and reduces the attack surface.
- Security Groups and Network ACLs provide complementary layers of network protection following the Defense in Depth security model.
- Proper route table configuration determines whether a subnet is public or private.
- VPC DNS Resolution and DNS Hostnames are required for private DNS functionality and secure communication with AWS managed services.
- Building the network foundation before deploying compute resources simplifies future security implementation and aligns with enterprise cloud architecture best practices.
- Using separate route tables for public and private subnets improves network isolation and follows enterprise cloud networking best practices.