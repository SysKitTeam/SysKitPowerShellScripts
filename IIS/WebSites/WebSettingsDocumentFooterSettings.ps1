Get-WebConfigurationProperty /system.webserver/staticContent  -name * | select defaultdocfooter, isdocfooterfilename, enabledocfooter -expand Collection
