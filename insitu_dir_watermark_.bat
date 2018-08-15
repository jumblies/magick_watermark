@echo
for %%f in (*.jpg) do (
magick convert ^
  %%f ^
  wm_mark.png ^
  -gravity northwest ^
  -compose Over -composite ^
  wm_mark.png ^
  -gravity southeast ^
  -compose Over -composite ^
  %%f)
magick convert -delay 10 -loop 0 *.jpg loop.gif
for %%f in (*.jpg) do del %%f
pause
exit/b







:watermark
magick convert ^
  %%f ^
  wm_mark.png ^
  -gravity northwest ^
  -compose Over -composite ^
  wm_mark.png ^
  -gravity southeast ^
  -compose Over -composite ^
  %%f
