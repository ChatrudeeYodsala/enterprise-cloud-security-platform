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

### Host Firewall

- Verified the UFW firewall installation and initial status.
- Configured the default firewall policy to deny all incoming connections and allow outgoing traffic.
- Allowed OpenSSH for secure administrative access.
- Enabled the UFW firewall and verified the active configuration.

### System Logging & Monitoring

- Verified the systemd-journald logging service was active.
- Reviewed recent system and SSH service logs.
- Verified user login history and available authentication records.
- Confirmed boot history to support operational monitoring and troubleshooting.

### File System Security

- Verified permissions of sensitive system files including `/etc/passwd`, `/etc/shadow`, and the SSH configuration.
- Audited SUID binaries to identify privileged executables.
- Confirmed file permissions aligned with the principle of least privilege.

### Kernel & Service Hardening

- Reviewed the Linux kernel version and operating system information.
- Audited running and enabled system services to identify unnecessary attack surface.
- Reviewed kernel networking parameters related to packet forwarding and ICMP redirects.
- Disabled ICMP redirect transmission by configuring the `net.ipv4.conf.all.send_redirects` kernel parameter.
- Verified active listening ports and network services.

---

## Verification

- Verified SSH service status and secure configuration.
- Confirmed UFW firewall was active with default deny inbound policy.
- Reviewed listening network ports and active services.
- Validated kernel security configuration and file permissions.
- Confirmed system logging and authentication records were available.

---

## Result

Successfully applied Linux security hardening controls to an Ubuntu Server hosted in a private AWS subnet.

The server now follows enterprise security best practices including secure remote administration through AWS Systems Manager, SSH hardening, host-based firewall protection, file permission validation, kernel security review, and centralized system logging.

---

## Lessons Learned

Linux hardening requires multiple layers of security rather than relying on a single control. Combining secure remote administration, firewall policies, authentication hardening, proper file permissions, kernel security settings, and continuous log monitoring significantly reduces the attack surface of production servers.

Deploying the server in a private subnet with AWS Systems Manager demonstrated how administrative access can be provided without exposing SSH directly to the internet, aligning with enterprise cloud security best practices.