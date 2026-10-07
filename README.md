# Ubuntu Security Audit & Hardening

## Overview

A practical cybersecurity project focused on investigating and improving the security configuration of an Ubuntu Linux virtual machine.

The project combines manual security auditing, system hardening, Bash scripting and verification of security changes.

## Environment

- Operating system: Ubuntu 26.04.1 LTS
- Virtualisation: UTM
- Host: Apple Silicon Mac
- Tools: Bash, UFW, ss, systemctl and Linux user-management utilities

## Security Improvements

**1. Network service auditing**

Inspected listening TCP ports using `ss` and identified the CUPS printing service as unnecessary for this environment.

**2. Service hardening**

Disabled CUPS and verified that TCP port 631 was no longer listening.

**3. Firewall configuration**

Enabled UFW with default rules that deny incoming connections and allow outgoing connections.

**4. User permission review**

Investigated privileged group memberships and removed the Ubuntu user from the unnecessary LXD group.

## Bash Security Audit Script

Developed `audit.sh` to report:

- UFW firewall status
- Listening TCP ports
- Ubuntu user group memberships
- CUPS service status

### Usage

From the project directory:

```bash
chmod +x audit.sh
./audit.sh
```

The script uses `sudo` for certain checks and may request administrator authentication.

## Testing

Verified that:

- UFW reported an active firewall.
- Port 631 was absent from the listening TCP ports.
- The Ubuntu account was no longer a member of the LXD group.
- CUPS remained inactive.
- The Bash script executed successfully.

## Limitations

This is a basic configuration-auditing script, not a vulnerability scanner. It reports security-related information but does not automatically determine whether the system is secure.

## Future Improvements

- Automatically identify potentially insecure settings.
- Audit SSH configuration and sensitive file permissions.
- Generate timestamped audit reports.
- Introduce additional security testing.

## Skills Demonstrated

Linux administration, system hardening, network service auditing, firewall configuration, user permissions, Bash scripting and security verification.
