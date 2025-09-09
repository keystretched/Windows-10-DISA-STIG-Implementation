<#
.SYNOPSIS
    This PowerShell script prevents Autorun commands from executing on removable media to reduce malware risk.
.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000185

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-CC-000185.ps1 
#>

# WN10-CC-000185 - Prevent Autorun Commands

# Define the registry key path
$key = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer"

# Create the registry key if it doesn't exist
if (-not (Test-Path $key)) {
    New-Item -Path $key -Force | Out-Null
}

# Disable Autorun functionality
New-ItemProperty -Path $key `
    -Name "NoAutorun" `
    -Value 1 `
    -PropertyType DWord `
    -Force
