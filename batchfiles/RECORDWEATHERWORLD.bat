@echo off
title Timer
SET /P time=Enter countdown time:
SET /a time=%time%
:loop
set /a time=%time%-1
if %time%==3 goto timesup
echo %time%
ping localhost -n 2 > nul
goto loop
:timesup
ffmpeg -rtbufsize 1500M -f dshow -i video="Blackmagic WDM Capture":audio="Blackmagic WDM Capture" -t 14:05 -r 30 -vcodec libx264 -s 1280x720 -crf 18 -profile:v main -level 3.1 -pix_fmt yuv420p -maxrate 4000000 -bufsize 4000001 -c:a aac -af loudnorm=-16:8:-1 -b:a 128k -ar 48k -movflags +faststart C:\Ready\WeatherWorld_%date:~-10,2%_%date:~-7,2%_%date:~-4,4%.mp4
pause >nul
exit