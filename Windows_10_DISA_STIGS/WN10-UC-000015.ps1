<#
.SYNOPSIS
    This PowerShell script prevents notification popups from displaying sensitive info on the lock screen.

.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-UC-000015

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-UC-000015.ps1 
#>

# WN10-UC-000015 - Disable Toast Notifications on Lock Screen

# Define the registry key path
$key = "HKCU:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications"

# Create the registry key if it doesn't exist
if (-not (Test-Path $key)) {
    New-Item -Path $key -Force | Out-Null
}

# Disable toast notifications on the lock screen
New-ItemProperty -Path $key `
    -Name "NoToastApplicationNotificationOnLockScreen" `
    -Value 1 `
    -PropertyType DWord `
    -Force
