magick convert ^
  -size 200x100 ^
  -background None -fill #123 label:lamkerad@gmail.com ^
  ( +clone -channel RGB -negate +channel -repage -2-2 ) ^
  -layers merge ^
  -channel A -evaluate Multiply 0.25 +channel ^
  -trim +repage ^
  wm_mark.png