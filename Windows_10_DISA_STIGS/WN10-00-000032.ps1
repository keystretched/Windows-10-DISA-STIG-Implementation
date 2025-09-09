<#
.SYNOPSIS
    This PowerShell script enforces complexity by requiring at least a 6-digit PIN for BitLocker.
.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000032

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-00-000032.ps1 
#>

# WN10-00-000032 - Set Minimum BitLocker PIN Length to 6 Digits

# Define registry key path
$keyPath = "HKLM:\SOFTWARE\Policies\Microsoft\FVE"

# Create registry key if it does not exist
if (-not (Test-Path $keyPath)) {
    New-Item -Path $keyPath -Force | Out-Null
}

# Set the minimum PIN length to 6 digits
New-ItemProperty -Path $keyPath `
    -Name "MinimumPIN" `
    -Value 6 `
    -PropertyType DWord `
    -Force
