$desktop = "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets"
$scratch = "C:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets"

# Rename files in desktop if they have double extension
if (Test-Path "$desktop\cama-elastica.mp4.mp4") {
    Rename-Item -Path "$desktop\cama-elastica.mp4.mp4" -NewName "cama-elastica.mp4" -Force
}
if (Test-Path "$desktop\hero-bg.mp4.mp4") {
    Rename-Item -Path "$desktop\hero-bg.mp4.mp4" -NewName "hero-bg.mp4" -Force
}
if (Test-Path "$desktop\kids-divider.jpg.jpg") {
    Rename-Item -Path "$desktop\kids-divider.jpg.jpg" -NewName "kids-divider.jpg" -Force
}
if (Test-Path "$desktop\lego-divider.jpg.jpg") {
    Rename-Item -Path "$desktop\lego-divider.jpg.jpg" -NewName "lego-divider.jpg" -Force
}
if (Test-Path "$desktop\lego-frame.jpg.jpg") {
    Rename-Item -Path "$desktop\lego-frame.jpg.jpg" -NewName "lego-frame.jpg" -Force
}
if (Test-Path "$desktop\multiplay.mp4.mp4") {
    Rename-Item -Path "$desktop\multiplay.mp4.mp4" -NewName "multiplay.mp4" -Force
}

# Copy from desktop to scratch
Copy-Item -Path "$desktop\cama-elastica.mp4" -Destination "$scratch\cama-elastica.mp4" -Force
Copy-Item -Path "$desktop\hero-bg.mp4" -Destination "$scratch\hero-bg.mp4" -Force
Copy-Item -Path "$desktop\kids-divider.jpg" -Destination "$scratch\kids-divider.jpg" -Force
Copy-Item -Path "$desktop\lego-divider.jpg" -Destination "$scratch\lego-divider.jpg" -Force
Copy-Item -Path "$desktop\lego-frame.jpg" -Destination "$scratch\lego-frame.jpg" -Force
Copy-Item -Path "$desktop\multiplay.mp4" -Destination "$scratch\multiplay.mp4" -Force

Write-Host "Rename and copy operations completed successfully!"
