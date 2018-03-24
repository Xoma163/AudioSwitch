IF exist ChangeMic.log goto loop1

echo 0>ChangeMic.log
nircmdc mutesysvolume 1 default_record
PlaySound Off.wav
goto exit

:loop1
del ChangeMic.log
nircmdc mutesysvolume 0 default_record
PlaySound On.wav
:exit