################
# SYSKIT
# www.syskit.com
<#
Lists all Computers in Active Directory. Run on Domain Controller.
#>
################
Get-ADComputer -Filter "OperatingSystem -like '*Server*'" -properties OperatingSystem,OperatingSystemServicePack | Select Name,Op*