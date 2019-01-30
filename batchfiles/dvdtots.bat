set readyfolder=C:\Ready

ffmpeg -i %1 -c:v mpeg2video -s 720x480 -aspect 16:9 -pix_fmt yuv420p -b 6500k -bt 8192k -maxrate 9000k -c:a ac3 -ar 48000 -ab 256k -f mpegts "%readyfolder%\%~n1.ts"


PAUSE