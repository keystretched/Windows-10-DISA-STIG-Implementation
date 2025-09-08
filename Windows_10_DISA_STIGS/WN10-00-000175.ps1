<#
.SYNOPSIS
    This PowerShell script prevents the use of the "Run as different user" feature, which can be abused in lateral movement or privilege escalation.

.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000175

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-00-000175.ps1 
#>

# WN10-00-000175 - Disable Secondary Logon Service

# Set the 'seclogon' service to Disabled so it cannot run at startup
Set-Service -Name seclogon -StartupType Disabled

# Stop the service immediately if it is currently running
Stop-Service -Name seclogon -Force
