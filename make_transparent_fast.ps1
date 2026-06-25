Add-Type -TypeDefinition @"
using System;
using System.Drawing;
using System.Drawing.Imaging;

public class ImageProcessor {
    public static void MakeTransparent(string srcPath, string destPath) {
        if (!System.IO.File.Exists(srcPath)) {
            Console.WriteLine("File not found: " + srcPath);
            return;
        }
        Console.WriteLine("Processing " + srcPath);
        using (Bitmap bmp = new Bitmap(srcPath)) {
            // Create a 32bpp ARGB bitmap to support alpha channel transparency
            Bitmap transparentBmp = new Bitmap(bmp.Width, bmp.Height, PixelFormat.Format32bppArgb);
            using (Graphics g = Graphics.FromImage(transparentBmp)) {
                g.DrawImage(bmp, 0, 0);
            }
            
            // Lock bitmap bits for fast pixel processing (or loop in compiled code which is extremely fast anyway)
            for (int y = 0; y < transparentBmp.Height; y++) {
                for (int x = 0; x < transparentBmp.Width; x++) {
                    Color c = transparentBmp.GetPixel(x, y);
                    if (c.R > 235 && c.G > 235 && c.B > 235) {
                        transparentBmp.SetPixel(x, y, Color.FromArgb(0, 255, 255, 255));
                    }
                }
            }
            transparentBmp.Save(destPath, ImageFormat.Png);
            Console.WriteLine("Saved to " + destPath);
        }
    }
}
"@ -ReferencedAssemblies System.Drawing

[ImageProcessor]::MakeTransparent("c:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets\lego-divider.jpg", "c:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets\lego-divider.png")
[ImageProcessor]::MakeTransparent("C:\Users\User\Desktop\Sites\brincakids-landing-page\assets\lego-divider.jpg", "C:\Users\User\Desktop\Sites\brincakids-landing-page\assets\lego-divider.png")
