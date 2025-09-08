<#
.SYNOPSIS
    This PowerShell script ensures DEP is enabled system-wide except for specified exceptions - OptOut.

.NOTES
    Author          : Brandon Waddell
    LinkedIn        : linkedin.com
    GitHub          : github.com/keystreched
    Date Created    : 2025-09-08
    Last Modified   : 2025-09-08
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000145

.TESTED ON
    Date(s) Tested  : 2025-06-09
    Tested By       : 2025-06-09
    Systems Tested  : 2025-06-09
    PowerShell Ver. : 2025-06-09

.USAGE
    Put any usage instructions here.
    Example syntax:
    PS C:\> .\STIG-ID-WN10-00-000145.ps1 
#>

# WN10-00-000145 - Configure Data Execution Prevention (DEP) to OptOut

# Set DEP to OptOut using BCDEdit
# Note: This modifies the boot configuration data (BCD)
bcdedit /set "{current}" nx OptOut
