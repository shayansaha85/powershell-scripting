Param (
    [string]$Path = './app',
    [string]$DestinationPath = "./",
    [switch]$PathIsWeb
)
If ($PathIsWeb -eq $True) {
    Try {
        $ContrainsWebFiles = "$((Get-ChildItem $Path).Extension | Sort-Object -Unique)" -match '\.js|\.html|\.css'
        If (-Not $ContrainsWebFiles) {
            Throw "It's not a web app"
        } Else {
            Write-Host "Source files look good"
        }
    } Catch {
        Throw "No backups created due to : $($_.exception.message)"
    }
}
If(-Not (Test-Path $Path)) 
{
   Throw "The source directory $Path does not exist, please specify an existing directory"
}

$date = Get-Date -format "yyyy-MM-dd"

$DestinationFile = "$($DestinationPath + 'backup-')$date.zip"
If (-Not (Test-Path $DestinationFile)) 
{
   Compress-Archive -Path $Path -CompressionLevel 'Fastest' -DestinationPath "$($DestinationPath + 'backup-' + $date)"
   Write-Host "Created backup at $( $DestinationPath + 'backup-' + $date).zip"
} Else {
   Write-Error "Today's backup already exists"
}
