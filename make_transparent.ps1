Add-Type -AssemblyName System.Drawing

function Make-Transparent($srcPath, $destPath) {
    if (Test-Path $srcPath) {
        Write-Output "Processing $srcPath"
        $bmp = New-Object System.Drawing.Bitmap($srcPath)
        for ($y = 0; $y -lt $bmp.Height; $y++) {
            for ($x = 0; $x -lt $bmp.Width; $x++) {
                $color = $bmp.GetPixel($x, $y)
                # Check if close to white (R, G, B > 235)
                if ($color.R -gt 235 -and $color.G -gt 235 -and $color.B -gt 235) {
                    $bmp.SetPixel($x, $y, [System.Drawing.Color]::FromArgb(0, 255, 255, 255))
                }
            }
        }
        $bmp.Save($destPath, [System.Drawing.Imaging.ImageFormat]::Png)
        $bmp.Dispose()
        Write-Output "Saved to $destPath"
    } else {
        Write-Output "File not found: $srcPath"
    }
}

Make-Transparent "c:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets\lego-divider.jpg" "c:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets\lego-divider.png"
Make-Transparent "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets\lego-divider.jpg" "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets\lego-divider.png"
