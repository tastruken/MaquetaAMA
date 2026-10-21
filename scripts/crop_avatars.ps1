Add-Type -AssemblyName System.Drawing

function CropImg($src, $dst, $x, $y, $w, $h) {
    $bmp = [System.Drawing.Bitmap]::FromFile($src)
    $rect = New-Object System.Drawing.Rectangle($x, $y, $w, $h)
    $crop = $bmp.Clone($rect, $bmp.PixelFormat)
    $crop.Save($dst, [System.Drawing.Imaging.ImageFormat]::Jpeg)
    $crop.Dispose()
    $bmp.Dispose()
    Write-Output "Saved $dst"
}

$testim = "C:\Users\tastr\.gemini\antigravity-ide\brain\fcc0372f-fef3-4f4f-9a0c-3c45307c6ff6\testimonials_and_steps_1789940837104.png"
CropImg $testim "public\images\aurvix_avatar_1.jpg" 380 814 48 48
CropImg $testim "public\images\aurvix_avatar_2.jpg" 660 814 48 48
CropImg $testim "public\images\aurvix_avatar_3.jpg" 100 814 48 48
