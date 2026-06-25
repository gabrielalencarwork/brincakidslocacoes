import shutil
import os

src_dir = r"C:\Users\User\Desktop\Sites\brincakids-landing-page\assets"
dst_dir = r"C:\Users\User\.gemini\antigravity-ide\scratch\brincakids-landing-page\assets"

try:
    files = os.listdir(src_dir)
    print("Files in src:", files)

    for f in files:
        if "3" in f and f.endswith(".png"):
            shutil.copy(os.path.join(src_dir, f), os.path.join(dst_dir, "logo.png"))
            shutil.copy(os.path.join(src_dir, f), os.path.join(src_dir, "logo.png"))
            print("Copied transparent logo:", f)
        elif "2" in f and f.endswith(".png"):
            shutil.copy(os.path.join(src_dir, f), os.path.join(dst_dir, "logo-gradient.png"))
            shutil.copy(os.path.join(src_dir, f), os.path.join(src_dir, "logo-gradient.png"))
            print("Copied gradient logo:", f)
except Exception as e:
    print("Error:", e)
