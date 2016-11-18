Get-WebConfigurationProperty /system.webServer/isapiFilters/filter  -name * | select name, path, enabled, enablecache,  precondition
