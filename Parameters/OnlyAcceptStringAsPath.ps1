Param (
    [string]$Path
)

New-Item $Path
Write-Host "$Path created"