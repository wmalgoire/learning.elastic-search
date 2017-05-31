# delete service if it exists
if (Get-Service httpbeat -ErrorAction SilentlyContinue) {
  $service = Get-WmiObject -Class Win32_Service -Filter "name='httpbeat'"
  $service.delete()
}
