@echo off
SET /P name=Filename withoutspaces:
ffmpeg -rtbufsize 1500M -f dshow -video_size 1920x1080 -pixel_format  uyvy422 -framerate 29.97 -i video="Blackmagic WDM Capture":audio="Blackmagic WDM Capture" -vcodec libx264 -s 1280x720 -crf 18 -profile:v main -level 3.1 -pix_fmt yuv420p -maxrate 4000000 -bufsize 4000001 -c:a aac -b:a 128k  F:%name%.mp4
PAUSE