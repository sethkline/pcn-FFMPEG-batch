"C:\ffmbc\ffmbc.exe" -i %1 -tff -map_audio_channel 0:1:0:0:1:0 -map_audio_channel 0:1:1:0:2:0 -map_audio_channel 0:1:0:0:3:0 -map_audio_channel 0:1:1:0:4:0 -acodec pcm_s24le -ar 48000 -ac 4 -target xdcamhd422 -vtag xd5c -s 1920x1080 -r 29.97 -y "C:\ready\05.10.17 Weather World.mxf" -newaudio -newaudio -newaudio 
pause