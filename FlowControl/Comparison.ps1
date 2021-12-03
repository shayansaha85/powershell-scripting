$value = -90


# -le for <=
# -ge for >=

If ($value -le 0) {
    Write-Host "$value is negative"
} Else {
    Write-Host "$value is positive"
}