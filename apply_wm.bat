magick convert ^
  13-03-09.jpg ^
  wm_mark.png ^
  -gravity northwest ^
  -compose Over -composite ^
  wm_mark.png ^
  -gravity southeast ^
  -compose Over -composite ^
  wm_pic.png
pause