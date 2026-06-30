$src1 = "C:\Users\User\.gemini\antigravity-ide\brain\3fb23a4e-463b-4dfc-b10c-2e2cb8db905c\media__1782832327207.jpg"
$src2 = "C:\Users\User\.gemini\antigravity-ide\brain\3fb23a4e-463b-4dfc-b10c-2e2cb8db905c\media__1782832327391.jpg"

$dests = @(
    "C:\Users\User\Desktop\Sites\Brincakids Landing Page\assets",
    "C:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets"
)

foreach ($dest in $dests) {
    if (Test-Path $dest) {
        Copy-Item -Path $src1 -Destination "$dest\multiplay_real.jpg" -Force
        Copy-Item -Path $src2 -Destination "$dest\cama_elastica_real.jpg" -Force
        Write-Host "Copied new images successfully to: $dest"
    } else {
        Write-Warning "Destination path not found: $dest"
    }
}
Write-Host "All copies finished!"
