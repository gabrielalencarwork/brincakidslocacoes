$src = "C:\Users\User\Desktop\Alien\Clientes\Brincakids\Instagram"
$dest1 = "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets"
$dest2 = "C:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets"

$files = @(
    "Bolinhas resistentes.png",
    "Colchonete 7cm.png",
    "Rede de proteção.jpeg",
    "Monitor Brincakids.png",
    "Multiplay.png",
    "WhatsApp Image 2026-06-02 at 17.05.19.jpeg",
    "WhatsApp Image 2026-06-02 at 17.05.19 (1).jpeg",
    "WhatsApp Image 2026-06-02 at 17.05.19 (2).jpeg",
    "WhatsApp Image 2026-06-02 at 17.05.19 (3).jpeg",
    "Alta Tensão 1.png",
    "Alta Tensão 2.png",
    "Alta Tensão 3.png"
)

foreach ($f in $files) {
    if (Test-Path "$src\$f") {
        Copy-Item -Path "$src\$f" -Destination "$dest1\$f" -Force
        Copy-Item -Path "$src\$f" -Destination "$dest2\$f" -Force
        Write-Host "Copied $f"
    } else {
        Write-Warning "File not found: $f"
    }
}
Write-Host "Completed copy!"
