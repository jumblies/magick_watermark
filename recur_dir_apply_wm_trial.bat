@echo
set datef=%date:~10,4%%date:~4,2%%date:~7,2%
for /D %%d in (*) do cd %%d
echo directory changed to %%d
for %%f in (*.jpg) do (
magick convert ^
  %%f ^
  C:\Users\GLAMKE\Desktop\garageCam\wm_mark.png ^
  -gravity northwest ^
  -compose Over -composite ^
   C:\Users\GLAMKE\Desktop\garageCam\wm_mark.png ^
  -gravity southeast ^
  -compose Over -composite ^
  %%f)
)

magick convert -delay 20 -loop 0 *.jpg %datef%_loop.gif
mv %datef%_loop.gif C:\Users\GLAMKE\Desktop\garageCam\
for %%f in (*.jpg) do del %%f
cd..
for /D %%d in (*) do rmdir %%d
for %%f in (*.gif) do start "" %%f
REM exit/b







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
