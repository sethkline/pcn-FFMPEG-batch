set readyfolder=C:\Ready

ffmpeg -i %1 -c:v libx264 -pix_fmt yuv420p -r 29.97 -s 1920x1080 -acodec pcm_s16le -ar 48000 -bf 2 -ac 2 -af loudnorm=-24:8:-1 "%readyfolder%\%~n1.mov"
PAUSE