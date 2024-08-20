# Disable IPv6 to Mitigate CVE-2024-38063

## Overview

This project provides PowerShell scripts designed to disable IPv6 on Windows network adapters, helping mitigate the risks associated with CVE-2024-38063.

## Scripts

- **Firewall_DisableIpv6.PS1**: Creates outbound and inbound firewall rules to disable all IPv6 traffic.
- **Manage-IPv6.ps1**: Disables IPv6 on all network adapters and creates a log. By default, this script disables IPv6, but you can re-enable it by uncommenting `#enable` and commenting `disable`.

## Usage

1. Download or copy the scripts.
2. Execute `Firewall_DisableIpv6.PS1` to apply firewall rules.
3. Run `Manage-IPv6.ps1` to disable IPv6 on all network adapters.

## CVE Association

These scripts are specifically designed to address vulnerabilities related to [CVE-2024-38063](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2024-38063).

## Contribution

Contributions are welcome through pull requests or issue reports.

## License

This project is licensed under the MIT License. See the `LICENSE` file for more details.
