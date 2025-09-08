<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000500

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-AU-000500.ps1 
#>

# Run this in an elevated PowerShell (Run as Administrator)

$path  = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application'
$name  = 'MaxSize'
$value = 0x00008000  # 32768 bytes

# Ensure the key exists
if (-not (Test-Path $path)) {
    New-Item -Path $path -Force | Out-Null
}

# Set as REG_DWORD
New-ItemProperty -Path $path -Name $name -Value $value -PropertyType DWord -Force | Out-Null

# Show result
Get-ItemProperty -Path $path | Select-Object $name
