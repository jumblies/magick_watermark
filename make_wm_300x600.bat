magick convert ^
  -size 400x200 ^
  -background None -fill #123 label:@lamkerad.txt ^
  ( +clone -channel RGB -negate +channel -repage -2-2 ) ^
  -layers merge ^
  -channel A -evaluate Multiply 0.25 +channel ^
  -trim +repage ^
  wm_mark.png
pause