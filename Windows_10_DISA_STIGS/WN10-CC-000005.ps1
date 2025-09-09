<#
.SYNOPSIS
    This PowerShell script prevents the use of the camera from the lock screen to reduce the potential for unauthorized access or spying.
.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000005

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-CC-000005.ps1 
#>

# WN10-CC-000005 - Disable Camera on Lock Screen

# Define the registry key path
$key = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"

# Create the registry key if it doesn't exist
if (-not (Test-Path $key)) {
    New-Item -Path $key -Force | Out-Null
}

# Disable camera access on the lock screen
New-ItemProperty -Path $key `
    -Name "NoLockScreenCamera" `
    -Value 1 `
    -PropertyType DWord `
    -Force
