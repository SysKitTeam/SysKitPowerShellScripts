################
# SYSKIT
# www.syskit.com
<#
Lists all Users in Active Directory. Run on Domain Controller.
#>
################
Get-ADUser -Filter * | select Name, DistinguishedName, Enabled, SID