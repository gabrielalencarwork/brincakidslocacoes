$ErrorActionPreference = "Stop"
try {
    Write-Host "Copying lego-divider.jpg..."
    Copy-Item -Path "C:\Users\User\Downloads\826033ef2fb934f31bf94be80f86fa6e.jpg" -Destination "C:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets\lego-divider.jpg" -Force
    Copy-Item -Path "C:\Users\User\Downloads\826033ef2fb934f31bf94be80f86fa6e.jpg" -Destination "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets\lego-divider.jpg" -Force

    Write-Host "Copying kids-divider.jpg..."
    Copy-Item -Path "C:\Users\User\Downloads\a7312c74b7a08bafa46e9b3884577116.jpg" -Destination "C:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets\kids-divider.jpg" -Force
    Copy-Item -Path "C:\Users\User\Downloads\a7312c74b7a08bafa46e9b3884577116.jpg" -Destination "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets\kids-divider.jpg" -Force

    Write-Host "Copying lego-frame.jpg..."
    Copy-Item -Path "C:\Users\User\Downloads\329c6d9badda6748c681108963475362.jpg" -Destination "C:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets\lego-frame.jpg" -Force
    Copy-Item -Path "C:\Users\User\Downloads\329c6d9badda6748c681108963475362.jpg" -Destination "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets\lego-frame.jpg" -Force

    Write-Host "Copying hero-bg.mp4..."
    Copy-Item -Path "C:\Users\User\Downloads\Crianças_brincando_catavento_rod*_202606152345.mp4" -Destination "C:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets\hero-bg.mp4" -Force
    Copy-Item -Path "C:\Users\User\Downloads\Crianças_brincando_catavento_rod*_202606152345.mp4" -Destination "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets\hero-bg.mp4" -Force

    Write-Host "Copying multiplay.mp4..."
    Copy-Item -Path "C:\Users\User\Downloads\Crie_movimento_para_essa_imagem_202606160006.mp4" -Destination "C:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets\multiplay.mp4" -Force
    Copy-Item -Path "C:\Users\User\Downloads\Crie_movimento_para_essa_imagem_202606160006.mp4" -Destination "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets\multiplay.mp4" -Force

    Write-Host "Copying cama-elastica.mp4..."
    Copy-Item -Path "C:\Users\User\Downloads\Crie_movimento_para_essa_imagem_202606160020.mp4" -Destination "C:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets\cama-elastica.mp4" -Force
    Copy-Item -Path "C:\Users\User\Downloads\Crie_movimento_para_essa_imagem_202606160020.mp4" -Destination "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets\cama-elastica.mp4" -Force

    Write-Host "All assets copied successfully!"
} catch {
    Write-Error "Error copying files: $_"
}
