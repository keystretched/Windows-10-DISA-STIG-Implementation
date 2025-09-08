<#
.SYNOPSIS
    This PowerShell script prevents users from saving passwords in Remote Desktop Client to reduce credential theft risk.

.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000270

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-CC-000270.ps1 
#>

# WN10-CC-000270 - Disable Saved Passwords in RDP Client

# Define the registry key path
$key = "HKLM:\Software\Policies\Microsoft\Windows NT\Terminal Services"

# Create the registry key if it doesn't exist
if (-not (Test-Path $key)) {
    New-Item -Path $key -Force | Out-Null
}

# Disable password saving in RDP client
New-ItemProperty -Path $key `
    -Name "DisablePasswordSaving" `
    -Value 1 `
    -PropertyType DWord `
    -Force
