#################
# SYSKIT
# www.syskit.com
<#
Displays response time for specific websites. Websites to test have to be specified in the script. Run on local Computer.
#>
#################
$URLList = 
"http://www.bing.com/",
"https://www.google.com",
"https://aws.amazon.com/" 
  $Result = @() 
   
   
  Foreach($Uri in $URLList) { 
  $time = try{ 
  $request = $null 
   ## Request the URI, and measure how long the response took. 
  $result1 = Measure-Command { $request = Invoke-WebRequest -Uri $uri } 
  ($result1.Ticks - ($result1.Ticks % 10000)) / 10000
  }  
  catch  
  {
   <# If the request generated an exception (i.e.: 500 server 
   error or 404 not found), we can pull the status code from the 
   Exception.Response property #>
   $request = $_.Exception.Response 
   $time = -1 
  }   
  $result += [PSCustomObject] @{ 
  Time = Get-Date; 
  Uri = $uri; 
  StatusCode = [int] $request.StatusCode; 
  StatusDescription = [string] $request.StatusDescription; 
  ResponseLength = [int] $request.RawContentLength; 
  "TimeTaken (ms)" = [int] $time;  
  } 

} 
Write-Output $result
