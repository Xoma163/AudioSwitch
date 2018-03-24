IF exist ChangeSound.log goto loop1
echo 0>ChangeSound.log
DefSound.exe 0
goto exit
:loop1
del ChangeSound.log
DefSound.exe 1
:exit
taskkill /im DefSound.exe