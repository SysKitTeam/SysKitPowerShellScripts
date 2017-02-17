############
# SYSKIT
# www.syskit.com
<#
Description
#>
############
function GetComputerObject($comp, $orgUnit)
{
    $obj = new-object psObject
    $obj| Add-Member @Member -Name "Organizational Unit" -Value $orgUnit
    if ($comp.DNSHostName)
    {
        $obj| Add-Member @Member -Name "Computer" -Value $comp.DNSHostName
    }
    else
    {
        $obj| Add-Member @Member -Name "Computer" -Value $comp.Name
    }
	return $obj
}

$allData= @()
$data= @()
$Member = @{
    MemberType = "NoteProperty"
    Force = $true
}

$defaultPartition = Get-ADDomainController | select DefaultPartition
$computersContainer = "CN=Computers," + $defaultPartition.DefaultPartition
$computers = Get-ADComputer -Filter * -SearchBase $computersContainer
foreach ($computer in $computers)
{
    $data = GetComputerObject -comp $computer -orgUnit "Computers"
    $allData += $data
}

$ous = Get-ADOrganizationalUnit -Filter *
foreach ($ou in $ous)
{
    $computers = Get-ADComputer -Filter * -SearchBase $ou
    foreach ($computer in $computers)
    {
        $data = GetComputerObject -comp $computer -orgUnit $ou.Name
        $allData += $data
    }
}

$allData