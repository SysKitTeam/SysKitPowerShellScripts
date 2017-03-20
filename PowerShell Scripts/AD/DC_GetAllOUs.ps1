################
# SYSKIT
# www.syskit.com
<#
Lists all Organizational Units in Active Directory. Run on Domain Controller.
#>
################
Get-AdObject -Filter {ObjectClass -eq "OrganizationalUnit"}