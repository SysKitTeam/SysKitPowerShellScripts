################
# SYSKIT
# www.syskit.com
<#
Lists all Client Computers (excluding Computers) in Active Directory. Run on Domain Controller.
#>
################
Get-ADComputer -Filter "OperatingSystem -notLike '*Server*'" -properties OperatingSystem,OperatingSystemServicePack | Select Name,Op* 