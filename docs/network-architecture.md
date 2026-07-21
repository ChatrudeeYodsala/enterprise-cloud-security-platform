# Enterprise Cloud Network Architecture

## Overview

Designed a secure AWS network architecture using Amazon VPC with public and private subnet segmentation following enterprise cloud security best practices.

## Objective

- Create an isolated virtual network
- Separate public and private resources
- Implement layered network security
- Prepare infrastructure for secure EC2 deployment

## Environment

- AWS VPC
- Internet Gateway
- Route Tables
- Security Groups
- Network ACLs

## Architecture

VPC (10.0.0.0/16)

├── Public Subnet (10.0.1.0/24)
└── Private Subnet (10.0.2.0/24)

## Implementation

- Created enterprise VPC
- Configured subnet segmentation
- Attached Internet Gateway
- Configured public routing
- Implemented Security Group
- Associated Network ACL

## Verification

- Verified subnet association
- Verified routing configuration
- Verified Internet Gateway attachment
- Verified Security Group configuration

## Result

Successfully deployed a secure enterprise cloud network foundation for future compute resources.

## Lessons Learned

Network segmentation, least privilege, and layered security are essential components of enterprise cloud architecture.