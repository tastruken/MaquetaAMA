Add-Type -AssemblyName System.Drawing
$bmp = [System.Drawing.Bitmap]::FromFile('public\images\aurvix_avatars_group.jpg')

function CropPart($bmp, $dst, $x, $y, $w, $h) {
    $rect = New-Object System.Drawing.Rectangle($x, $y, $w, $h)
    $crop = $bmp.Clone($rect, $bmp.PixelFormat)
    $crop.Save($dst, [System.Drawing.Imaging.ImageFormat]::Jpeg)
    $crop.Dispose()
    Write-Output "Saved $dst"
}

CropPart $bmp 'public\images\aurvix_avatar_1.jpg' 0 0 44 44
CropPart $bmp 'public\images\aurvix_avatar_2.jpg' 36 0 44 44
CropPart $bmp 'public\images\aurvix_avatar_3.jpg' 71 0 44 44
$bmp.Dispose()
