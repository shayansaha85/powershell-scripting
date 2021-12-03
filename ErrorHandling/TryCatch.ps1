Param (
    [string]$Path = './app',
    [string]$DestinationPath = './'
)

Try {
    $date = Get-Date -format 'yyyy-MM-dd'
    Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
    Write-Host "File compressed"
} Catch {
    Write-Host "Something went wrong"
}