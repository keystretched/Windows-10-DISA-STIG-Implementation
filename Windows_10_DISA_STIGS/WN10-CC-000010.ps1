<#
.SYNOPSIS
    This PowerShell script prevents a slideshow of images from playing on the lock screen, reducing potential data exposure.
.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000010

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-CC-000010.ps1 
#>

# WN10-CC-000010 - Disable Lock Screen Slide Show

# Define the registry key path
$key = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization"

# Create the registry key if it doesn't exist
if (-not (Test-Path $key)) {
    New-Item -Path $key -Force | Out-Null
}

# Disable the lock screen slideshow
New-ItemProperty -Path $key `
    -Name "NoLockScreenSlideshow" `
    -Value 1 `
    -PropertyType DWord `
    -Force
