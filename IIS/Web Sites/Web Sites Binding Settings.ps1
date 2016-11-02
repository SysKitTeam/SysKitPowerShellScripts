$allData = @()
$test = Get-WebConfigurationProperty /system.applicationhost/sites -name * | select -expand collection | select name -expand bindings
foreach($t in $test)
{
    $allData  += $t |select Name -expand Collection |select Name, Protocol, BindingInformation, SSLFlags
}
$allData
