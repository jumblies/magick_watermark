@echo
for /D %%d in (*) do cd %%d
for %%f in (*.png) do (
magick convert ^
  %%f ^
  C:\Users\GLAMKE\Desktop\garageCam\wm_mark.png ^
  -gravity northwest ^
  -geometry +20+20 ^
  -compose Over -composite ^
  C:\Users\GLAMKE\Desktop\garageCam\wm_mark.png ^
  -gravity center ^
  -geometry +20+20 ^
  -compose Over -composite ^
  C:\Users\GLAMKE\Desktop\garageCam\wm_mark.png ^
  -gravity southeast ^
  -geometry +20+20 ^
  -compose Over -composite ^
  %%f)
)
