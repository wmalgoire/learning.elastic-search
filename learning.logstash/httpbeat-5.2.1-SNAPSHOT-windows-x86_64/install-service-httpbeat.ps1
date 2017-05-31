# delete service if it already exists
if (Get-Service httpbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='httpbeat'"
  $service.StopService()
  Start-Sleep -s 1
  $service.delete()
}

$workdir = Split-Path $MyInvocation.MyCommand.Path

# create new service
New-Service -name httpbeat `
  -displayName httpbeat `
  -binaryPathName "`"$workdir\\httpbeat.exe`" -c `"$workdir\\httpbeat.yml`" -path.home `"$workdir`" -path.data `"C:\\ProgramData\\httpbeat`""
