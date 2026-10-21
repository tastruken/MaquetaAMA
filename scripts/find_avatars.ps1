Add-Type -AssemblyName System.Drawing
$bmp = [System.Drawing.Bitmap]::FromFile('C:\Users\tastr\.gemini\antigravity-ide\brain\fcc0372f-fef3-4f4f-9a0c-3c45307c6ff6\testimonials_and_steps_1789940837104.png')
for ($y = 100; $y -lt 940; $y += 50) {
  for ($x = 100; $x -lt 1800; $x += 100) {
    $c = $bmp.GetPixel($x, $y)
    if ($c.R -lt 240 -or $c.G -lt 240 -or $c.B -lt 240) {
      Write-Output "Y=$y, X=$x"
      break
    }
  }
}
$bmp.Dispose()
