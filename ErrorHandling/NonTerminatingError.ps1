Try {
    Get-Content './file.txt' -ErrorAction Stop
} Catch {
    Write-Host "Something went wrong"
}