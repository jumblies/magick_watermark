@echo 
rem off
call :treeProcess
pause
goto :eof

:treeProcess
for /D %%d in (*) do (
    cd %%d
	magick convert -delay 10 -loop 0 *.jpg loop.gif
	ren loop.gif Loop_%date:~10,4%%date:~7,2%%date:~4,2%.gif
	for %%f in (*.jpg) do del %%f
    call :treeProcess
    cd ..
)
exit /b


REM magick convert -delay 10  -loop 3 *.jpg loop.gif
REM magick mogrify -resize 50% *.jpg
REM  name to date 
REM ren loop.gif Loop%date:~10,4%%date:~7,2%%date:~4,2%.jpg
