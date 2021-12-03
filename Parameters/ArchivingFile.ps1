Param (
    [string]$Path,
    [string]$DestinationPath = "./"
)

$date = Get-Date -format 'yyyy-MM-dd'
Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
Write-Host "File compressed"