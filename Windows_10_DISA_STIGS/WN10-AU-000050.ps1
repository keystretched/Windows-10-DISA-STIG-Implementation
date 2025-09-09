<#
.SYNOPSIS
    This PowerShell script logs successful process creation for accountability and tracing.
.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000050

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-AU-000050.ps1 
#>

# WN10-AU-000050 - Audit Process Creation Successes

# Enable auditing for successful process creation events
auditpol /set /subcategory:"Process Creation" /success:enable
