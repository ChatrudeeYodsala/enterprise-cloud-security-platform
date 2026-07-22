# Enterprise Linux Security Hardening

## Overview

Applied enterprise Linux security hardening practices to an Ubuntu Server running on Amazon EC2. This phase establishes a secure operating system baseline before implementing additional host security controls.

---

## Objective

- Establish a secure Linux baseline
- Verify operating system information
- Update installed packages
- Prepare the server for security hardening

---

## Environment

- Amazon EC2
- Ubuntu Server 24.04 LTS
- AWS Systems Manager Session Manager
- Amazon EBS
- AWS IAM

---

## Architecture

```text
AWS Systems Manager
        │
        ▼
Amazon EC2 (Ubuntu Server 24.04)
        │
Linux Security Hardening
```

---

## Implementation

### System Baseline

- Verified the current session user and working directory.
- Collected system information, including hostname, Ubuntu version, and kernel version.
- Reviewed CPU, memory, and disk utilization.
- Updated package repositories.
- Upgraded installed packages to the latest available versions.

### User & Authentication Security

- Reviewed local user accounts and distinguished system accounts from interactive users.
- Verified administrator privileges through the sudo group.
- Reviewed password status for privileged accounts.
- Verified interactive login shells for local users.

### SSH Hardening

- Backed up the SSH daemon configuration before modification.
- Disabled direct root login over SSH.
- Disabled password-based authentication.
- Enforced public key authentication.
- Validated SSH configuration syntax before restarting the service.
- Verified the SSH service was running after applying the configuration.

---

## Verification

> To be updated after completing Phase 5.

---

## Result

> To be updated after completing Phase 5.

---

## Lessons Learned

> To be updated after completing Phase 5.