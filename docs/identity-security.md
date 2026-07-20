# Identity Security

## Overview

Implemented AWS identity security baseline using IAM.

## Objective

- Protect AWS account
- Avoid daily Root User usage
- Implement MFA
- Apply IAM best practices

## Environment

AWS IAM

## Architecture

Root User
|
IAM User
|
Administrators Group
|
AdministratorAccess

## Implementation

- Enabled Root MFA
- Created IAM user cloud-admin
- Created Administrator group
- Enabled IAM User MFA

## Verification

- Confirmed MFA enabled
- Confirmed IAM permissions

## Result

AWS account identity layer secured.

## Lessons Learned

IAM is the foundation of AWS security.
Least privilege and MFA reduce account compromise risk.