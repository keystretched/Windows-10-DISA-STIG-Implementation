<#
.SYNOPSIS
    This PowerShell script enforces strong password policy by requiring at least 14 characters for all local account passwords.

.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000035

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-AC-000035.ps1 
#>

# WN10-AC-000035 - Set Minimum Password Length to 14

# Set the minimum password length to 14 characters for local accounts
net accounts /minpwlen:14
