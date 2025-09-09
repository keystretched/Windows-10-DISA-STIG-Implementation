<#
.SYNOPSIS
    This PowerShell script limits brute-force attacks by restricting the number of bad login attempts.
.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000010
.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-AC-000010.ps1 
#>

# WN10-AC-000010 - Bad Logon Attempts must be set to 3 or less

# Set account lockout threshold to 3 failed attempts
net accounts /lockoutthreshold:3
