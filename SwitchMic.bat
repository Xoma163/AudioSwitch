IF exist SwitchMic.log goto loop1

echo 0>SwitchMic.log
PlaySound Off.wav
nircmdc mutesysvolume 1 default_record
goto exit

:loop1
del SwitchMic.log
PlaySound On.wav
nircmdc mutesysvolume 0 default_record
:exit