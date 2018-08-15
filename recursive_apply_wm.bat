@echo 
rem off
call :treeProcess
goto :eof

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

:treeProcess
rem Do whatever you want here over the files of this subdir, for example:
for %%f in (*.jpg) do  echo %%f
for /D %%d in (*) do (
    cd %%d
    call :treeProcess
    cd ..
)

exit /b