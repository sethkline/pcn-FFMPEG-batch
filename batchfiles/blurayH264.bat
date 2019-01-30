set readyfolder=C:\Ready
:: May need to update Frame Rate this is mpeg4

ffmpeg -i %1 -c:v libx264 -s 1920x1080 -b:v 38M -maxrate 40M -bufsize 30M -pix_fmt yuv420p -preset veryslow -tune film -level 4.1 -x264opts keyint=30:bluray-compat=1:force-cfr=1:open-gop=1:slices=4:fake-interlaced=1:colorprim=bt709:transfer=bt709:colormatrix=bt709:sar=1/1 -f H264 -r 30 -y "%readyfolder%\%~n1.264" -c:a ac3 -b:a "320k" -ar 48000 -y "%readyfolder%\%~n1.ac3"

PAUSE