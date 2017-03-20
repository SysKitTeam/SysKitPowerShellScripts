################
# SYSKIT
# www.syskit.com
<#
Lists all Users that are Trusted For Delegation. Run on Domain Controller.
#>
################
Get-ADUser -Filter {TrustedForDelegation -eq "True"} | select Name, Enabled, SID