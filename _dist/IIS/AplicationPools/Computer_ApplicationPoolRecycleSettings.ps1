################
# SYSKIT
# www.syskit.com
<#
Displays ApplicationPool recycle action settings for all ApplicationPools on the selected Computer. Run on any Computer.
#>
################
<#Get-WebConfigurationProperty /system.applicationhost/applicationpools -name * | select -expand collection |select name -expand recycling |select name ,LogEventOnRecycle, disallowoverlappingrotation, disallowrotationonconfigchange -expand PeriodicRestart | select name ,LogEventOnRecycle, disallowoverlappingrotation, disallowrotationonconfigchange, memory, privatememory, requests, time#>

$var = Get-WebConfigurationProperty /system.applicationhost/applicationpools -name * | select -expand collection 

$allData= @()
$data= @()
$Member = @{
    MemberType = "NoteProperty"
    Force = $true
}

foreach ($v in $var)
{
    $data = new-object psObject
    $data | Add-Member @Member -Name "AppPoolName" -Value $v.Name
    $data | Add-Member @Member -Name "Disallow Overlapping Rotation" -Value $v.recycling.disallowOverlappingRotation
    $data | Add-Member @Member -Name "Disallow Rotationon Configchange" -Value $v.recycling.disallowrotationonconfigchange
    $data | Add-Member @Member -Name "Log Eventon Recycle" -Value $v.recycling.logeventonrecycle    
    $data | Add-Member @Member -Name "Memory" -Value $v.recycling.PeriodicRestart.memory
    $data | Add-Member @Member -Name "Private Memory" -Value $v.recycling.PeriodicRestart.PrivateMemory
    $data | Add-Member @Member -Name "Requests" -Value $v.recycling.PeriodicRestart.requests
    $data | Add-Member @Member -Name "Time" -Value $v.recycling.PeriodicRestart.time
    $data | Add-Member @Member -Name "Schedule Time" -Value $v.recycling.PeriodicRestart.schedule.collection.value

    $data | Add-Member @Member -Name "Schedule: Add Element Names" -Value $v.recycling.PeriodicRestart.schedule.schema.collectionschema.AddElementNames
    $data | Add-Member @Member -Name "Schedule: Allow Duplicates" -Value $v.recycling.PeriodicRestart.schedule.schema.collectionschema.AllowDuplicates
    $data | Add-Member @Member -Name "Schedule: Clear Element Name" -Value $v.recycling.PeriodicRestart.schedule.schema.collectionschema.ClearElementName
    $data | Add-Member @Member -Name "Schedule: Is Merge Append" -Value $v.recycling.PeriodicRestart.schedule.schema.collectionschema.IsMergeAppend
    $data | Add-Member @Member -Name "Schedule: Remove Element Name" -Value $v.recycling.PeriodicRestart.schedule.schema.collectionschema.RemoveElementName
    foreach($att in $v.recycling.schema.attributeschemas)
    {
        $dataExp = new-object psObject
        $dataExp = $data;
        $dataExp| Add-Member @Member -Name "Attribute Name" -Value $att.Name
        $dataExp| Add-Member @Member -Name "Attribute Allow Infinite" -Value $att.AllowInfinite
        $dataExp| Add-Member @Member -Name "Attribute Default Value" -Value $att.DefaultValue
        $dataExp| Add-Member @Member -Name "Attribute Is Case Sensitive" -Value $att.IsCaseSensitive
        $dataExp| Add-Member @Member -Name "Attribute Is Combined Key" -Value $att.IsCombinedKey
        $dataExp| Add-Member @Member -Name "Attribute Is Encrypted" -Value $att.IsEncrypted
        $dataExp| Add-Member @Member -Name "Attribute Is Expanded" -Value $att.IsExpanded
        $dataExp| Add-Member @Member -Name "Attribute Is Required" -Value $att.IsRequired
        $dataExp| Add-Member @Member -Name "Attribute Is Unique Key" -Value $att.IsUniqueKey
        $dataExp| Add-Member @Member -Name "Attribute Type" -Value $att.Type
        $dataExp| Add-Member @Member -Name "Attribute Time Span Format" -Value $att.TimeSpanFormat
        $dataExp
    }
}