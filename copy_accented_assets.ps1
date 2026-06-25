$src = "C:\Users\User\Desktop\Alien\Clientes\Brincakids\Instagram"
$dest1 = "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets"
$dest2 = "C:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets"

# Copy Alta Tensão files using wildcard
Get-ChildItem -Path $src -Filter "Alta*" | ForEach-Object {
    Copy-Item -Path $_.FullName -Destination "$dest1\$($_.Name)" -Force
    Copy-Item -Path $_.FullName -Destination "$dest2\$($_.Name)" -Force
    Write-Host "Copied: $($_.Name)"
}

# Copy Rede de proteção file using wildcard
Get-ChildItem -Path $src -Filter "Rede*" | ForEach-Object {
    Copy-Item -Path $_.FullName -Destination "$dest1\$($_.Name)" -Force
    Copy-Item -Path $_.FullName -Destination "$dest2\$($_.Name)" -Force
    Write-Host "Copied: $($_.Name)"
}

Write-Host "Wildcard copy completed!"
