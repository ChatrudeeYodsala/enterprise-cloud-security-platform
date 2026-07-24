# Identity Security

## Overview

Implemented AWS identity security baseline using IAM.

## Objective

- Protect AWS account
- Avoid daily Root User usage
- Implement MFA
- Apply IAM best practices

## Environment

- AWS IAM
- AWS Management Console

## Architecture

Root User
     │
     ▼
 IAM User
     │
     ▼
Administrators Group
     │
     ▼
AdministratorAccess

## Implementation

- Reviewed Root User security recommendations.
- Enabled MFA for the Root User.
- Created an IAM administrator user.
- Created an Administrators IAM group.
- Attached the AdministratorAccess managed policy.
- Enabled MFA for the IAM administrator account.

## Verification

- Confirmed MFA enabled
- Confirmed IAM permissions

## Result

Successfully established a secure AWS identity management baseline by reducing Root User usage and enforcing MFA for administrative access.

## Lessons Learned

IAM is the foundation of AWS security.
Least privilege and MFA reduce account compromise risk.