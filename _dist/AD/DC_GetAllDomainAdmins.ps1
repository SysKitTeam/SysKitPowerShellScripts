################
# SYSKIT
# www.syskit.com
<#
Lists all Domain Admins in Active Directory. Run on Domain Controller.
#>
################
Get-ADGroupMember 'Domain Admins' | select Name, ObjectClass, SID