Param (
    [Parameter(Mandatory, HelpMessage = "Please enter the name of the file")]
    $Path
)

New-Item $Path
Write-Host "$Path created"