@echo 
rem off
call :treeProcess
goto :eof

:treeProcess
rem Do whatever you want here over the files of this subdir, for example:
for %%f in (*.jpg) do  magick convert %%f -resize 50%% %%f 
REM ORIGINAL for %%f in (*.jpg) do  magick convert -resize 50% %%f
for /D %%d in (*) do (
    cd %%d
    call :treeProcess
    cd ..
)

exit /b


REM magick convert -delay 10  -loop 3 *.jpg loop.gif
REM magick mogrify -resize 50% *.jpg