<#
.SYNOPSIS
    This PowerShell script prevents data exposure and AI interactions on managed systems.

.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000107

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-AU-000107.ps1 

# WN10-00-000107 - Disable Windows Copilot

# Define registry key path
$keyPath = "HKCU:\Software\Policies\Microsoft\Windows\WindowsCopilot"

# Create registry key if it does not exist
if (-not (Test-Path $keyPath)) {
    New-Item -Path $keyPath -Force | Out-Null
}

# Disable Copilot by setting TurnOffWindowsCopilot to 1
New-ItemProperty -Path $keyPath `
    -Name "TurnOffWindowsCopilot" `
    -Value 1 `
    -PropertyType DWord `
    -Force
