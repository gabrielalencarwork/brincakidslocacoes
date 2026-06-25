const fs = require('fs');
const path = require('path');

const srcDir = 'C:\\Users\\User\\Desktop\\Sites\\brincakids-landing-page\\assets';
const dstDir = 'C:\\Users\\User\\.gemini\\antigravity-ide\\scratch\\brincakids-landing-page\\assets';

try {
    const files = fs.readdirSync(srcDir);
    console.log("Files in src:", files);

    files.forEach(f => {
        if (f.includes('3') && f.endsWith('.png')) {
            fs.copyFileSync(path.join(srcDir, f), path.join(dstDir, 'logo.png'));
            fs.copyFileSync(path.join(srcDir, f), path.join(srcDir, 'logo.png'));
            console.log("Copied transparent logo:", f);
        } else if (f.includes('2') && f.endsWith('.png')) {
            fs.copyFileSync(path.join(srcDir, f), path.join(dstDir, 'logo-gradient.png'));
            fs.copyFileSync(path.join(srcDir, f), path.join(srcDir, 'logo-gradient.png'));
            console.log("Copied gradient logo:", f);
        }
    });
} catch (e) {
    console.error("Error:", e.message);
}
