# If the user status is Minor he/she is not taxable, if adult he/she is taxable

Param (
    $Status
)

If($Status -eq 'Minor') {
    Write-Host "Taxable : $False"
} ElseIf(%Status -eq 'Adult') {
    Write-Host "Taxable : $True"
} Else {
    Write-Host "Taxable : $False"
}