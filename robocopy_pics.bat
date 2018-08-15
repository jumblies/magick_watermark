robocopy \\10.10.10.1\asus\garageCam\ c:\Users\GLAMKE\Desktop\garageCam\ *.jpg /S /MOV /LOG:copylog.txt /TEE
REM   /PURGE doesn't work with /MOV

pause
REM /S for subdirectories
REM /MOV to move the files but not the dirs.  will need to deal with empty date dirs on NAS
REM /PURGE gets rid of files on dest that aren't on source 