cmd \k cd \\10.10.10.143\motioneye
for /f "usebackq" %%d in (`"dir /ad/b/s | sort /R"`) do rd "%%d"
pause