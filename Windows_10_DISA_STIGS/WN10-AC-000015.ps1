<#
.SYNOPSIS
    This PowerShell prevents attackers from retrying after each timeout by enforcing reset timer.
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000015
.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-AC-000015.ps1 
#>

# WN10-AC-000015 - Reset Account Lockout Counter after 15 minutes

# Set account lockout counter reset time to 15 minutes
net accounts /lockoutwindow:15
