Param (
    [string]$Path = './webapp',
    [string]$DestinationPath = './'
)

If (-Not (Test-Path $Path)) {
    Throw "$Path doesn't exist"
}
$date = Get-Date -format 'yyyy-MM-dd'
$DestinationFolder = "$($DestinationPath + 'backup-')$date.zip"

If(-Not (Test-Path $DestinationFolder)){
    Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath $DestinationFolder
} Else {
    Throw "$DestinationFolder already exists"
}

