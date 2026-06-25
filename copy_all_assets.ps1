$src = "C:\Users\User\Desktop\Alien\Clientes\Brincakids\Instagram"
$dest1 = "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets"
$dest2 = "C:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets"

$exactFiles = @(
    "Bolinhas resistentes.png",
    "Colchonete 7cm.png",
    "Monitor Brincakids.png",
    "Multiplay.png",
    "WhatsApp Image 2026-06-02 at 17.05.19.jpeg",
    "WhatsApp Image 2026-06-02 at 17.05.19 (1).jpeg",
    "WhatsApp Image 2026-06-02 at 17.05.19 (2).jpeg",
    "WhatsApp Image 2026-06-02 at 17.05.19 (3).jpeg"
)

# Copy exact files
foreach ($f in $exactFiles) {
    if (Test-Path "$src\$f") {
        Copy-Item -Path "$src\$f" -Destination "$dest1\$f" -Force
        Copy-Item -Path "$src\$f" -Destination "$dest2\$f" -Force
        Write-Host "Copied $f"
    } else {
        Write-Warning "File not found: $f"
    }
}

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

Write-Host "All assets copied successfully!"
