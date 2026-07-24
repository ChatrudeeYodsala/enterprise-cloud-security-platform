# AWS Monitoring & Operational Visibility

## Overview

Implemented AWS native monitoring and management capabilities using Amazon CloudWatch and AWS Systems Manager to improve operational visibility, monitoring, and centralized administration for an Ubuntu Server deployed in a private Amazon VPC.

---

## Objective

- Monitor EC2 performance and health
- Configure CloudWatch alarms
- Build centralized monitoring dashboards
- Manage EC2 instances using AWS Systems Manager
- Improve operational visibility and infrastructure management

---

## Environment

- Amazon EC2
- Amazon CloudWatch
- AWS Systems Manager
- Amazon VPC
- Ubuntu Server 24.04 LTS

---

## Architecture

```text
                Amazon CloudWatch
                       ▲
                       │
        Metrics ───────┤
                       │
            Ubuntu EC2 Instance
                       ▲
                       │
          AWS Systems Manager
         (Session / Run Command /
        State Manager / Inventory)
```

---

## Implementation

### CloudWatch Monitoring

- Reviewed Amazon EC2 performance metrics including CPU utilization, network traffic, and instance status checks.
- Verified CPU utilization, network traffic, and instance health metrics.
- Confirmed EC2 status checks were operating normally.

### CloudWatch Alarms

- Created a CPU utilization alarm using a static threshold.
- Configured an EC2 status check alarm to detect infrastructure failures.
- Verified alarm configuration and confirmed alarms entered the OK state after deployment.

### CloudWatch Dashboard

- Built a centralized CloudWatch dashboard.
- Added CPU utilization, network traffic, and instance health widgets.
- Verified dashboard metrics updated correctly.

### AWS Systems Manager

- Connected to the EC2 instance using Session Manager.
- Executed administrative commands through Run Command.
- Configured State Manager associations.
- Enabled Systems Manager Inventory for asset visibility.
- Verified the managed instance remained online throughout administration tasks.

---

## Verification

- Verified CloudWatch metrics collection.
- Verified CloudWatch alarms.
- Verified dashboard visualization.
- Verified Systems Manager managed node status.
- Verified Inventory association.
- Verified centralized remote administration.

---

## Result

Successfully implemented AWS native monitoring using Amazon CloudWatch and AWS Systems Manager.

The monitoring environment now provides centralized operational visibility, infrastructure health monitoring, dashboard visualization, alarming, and secure remote administration without exposing SSH to the public internet.

---

## Lessons Learned

Cloud-native monitoring significantly improves operational visibility by centralizing infrastructure metrics, health monitoring, and remote administration.

Using Amazon CloudWatch together with AWS Systems Manager reduces administrative overhead while supporting enterprise operational best practices for secure server management in private cloud environments.