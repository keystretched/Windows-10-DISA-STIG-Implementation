<#
.SYNOPSIS
    This PowerShell script prevents the use of basic authentication for Windows Remote Management (WinRM) to enhance security.
.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000330

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-CC-000330.ps1 
#>

# WN10-CC-000330 - Disable Basic Auth for WinRM Client 

# Define the registry key path
$key = "HKLM:\Software\Policies\Microsoft\Windows\WinRM\Client"

# Create the registry key if it doesn't exist
if (-not (Test-Path $key)) {
    New-Item -Path $key -Force | Out-Null
}

# Disable Basic authentication in the WinRM client
New-ItemProperty -Path $key `
    -Name "AllowBasic" `
    -Value 0 `
    -PropertyType DWord `
    -Force
