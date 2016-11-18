$test = Get-WebConfigurationProperty /system.applicationhost/sites -name * | select -expand collection | select name -expand limits
$test | select name, maxBandwidth, maxconnections, connectionTimeout, maxUrlSegments
