# Infrastructure Automation

## Overview

Implemented Bash automation scripts to simplify routine infrastructure administration tasks and improve operational consistency across enterprise Linux servers.

---

## Objective

- Automate operational tasks
- Improve system visibility
- Reduce manual administration
- Standardize infrastructure health reporting

---

## Environment

- Ubuntu Server 24.04 LTS
- AWS EC2
- AWS Systems Manager
- Bash

---

## Health Check Automation

### Implementation

- Developed a Bash script to automate Linux server health checks.
- Collected system information including hostname, operating system, kernel version, uptime, CPU load, memory usage, disk usage, firewall status, and SSH service status.
- Executed the script directly on the EC2 instance to validate functionality.

### Verification

- Verified the script executed successfully.
- Confirmed accurate reporting of system health information.

---

## Security Audit Automation

### Implementation

- Developed a Bash script to automate basic Linux security auditing.
- Verified firewall status, SSH configuration, listening ports, sudo group membership, and recent failed login records.
- Executed the script on the EC2 instance to validate security settings.

### Verification

- Confirmed the script completed successfully.
- Verified key security configurations matched the hardened server baseline.

---

## System Report Automation

### Implementation

- Developed a Bash script to generate a consolidated system report.
- Included operating system information, resource utilization, network configuration, and service status.
- Executed the script on the EC2 instance to validate report generation.

### Verification

- Verified the report displayed current system information.
- Confirmed infrastructure status could be reviewed from a single report.

---

## Service Status Automation

### Implementation

- Developed a Bash script to verify the operational status of critical Linux services.
- Monitored SSH, Amazon SSM Agent, and system logging services.
- Displayed service health in a concise and readable format.

### Verification

- Verified all required services were active.
- Confirmed the script successfully detected service status.