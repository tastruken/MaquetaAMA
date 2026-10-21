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

$bento = "C:\Users\tastr\.gemini\antigravity-ide\brain\fcc0372f-fef3-4f4f-9a0c-3c45307c6ff6\bento_cards_and_properties_1789940389317.png"
$cats = "C:\Users\tastr\.gemini\antigravity-ide\brain\fcc0372f-fef3-4f4f-9a0c-3c45307c6ff6\categories_and_listings_1789940424070.png"
$projs = "C:\Users\tastr\.gemini\antigravity-ide\brain\fcc0372f-fef3-4f4f-9a0c-3c45307c6ff6\featured_projects_1789940472203.png"
$spaces = "C:\Users\tastr\.gemini\antigravity-ide\brain\fcc0372f-fef3-4f4f-9a0c-3c45307c6ff6\luxury_residences_grid_1789940529284.png"
$cta = "C:\Users\tastr\.gemini\antigravity-ide\brain\fcc0372f-fef3-4f4f-9a0c-3c45307c6ff6\footer_section_1789941273594.png"
$hero = "C:\Users\tastr\.gemini\antigravity-ide\brain\fcc0372f-fef3-4f4f-9a0c-3c45307c6ff6\hero_and_nav_1789940313190.png"

CropImg $bento "public\images\aurvix_bento_tall2.jpg" 1345 215 174 430
CropImg $cats "public\images\aurvix_cat_apartments.jpg" 398 398 270 310
CropImg $cats "public\images\aurvix_cat_villas.jpg" 684 398 270 310
CropImg $cats "public\images\aurvix_cat_modern.jpg" 968 398 270 310
CropImg $cats "public\images\aurvix_cat_luxury.jpg" 1252 398 270 310

CropImg $projs "public\images\aurvix_proj_azure.jpg" 400 318 360 330
CropImg $projs "public\images\aurvix_proj_sunset.jpg" 780 318 360 330
CropImg $projs "public\images\aurvix_proj_greenfield.jpg" 1160 318 360 330

CropImg $spaces "public\images\aurvix_space_living.jpg" 400 514 1120 430
CropImg $cta "public\images\aurvix_cta_dusk.jpg" 0 0 1920 520
CropImg $hero "public\images\aurvix_avatars_group.jpg" 1220 860 115 50
