ffmpeg -loglevel error ...

ffmpeg -i input.mp4 -g 8 ...

ffmpeg -i input.mp4 -c:v libx264 -x264-params keyint=8 ...

ffmpeg -help encoder=libx264

ffmpeg -i input.mp4 -c:v libx264 -profile main -x264-params 'keyint=8:bframes=0' output.mp4

ffmpeg -i input.mp4 -vf 'scale=1920:1080:flags=bicubic' output.mp4

ffmpeg -i input.mp4 -vf 'scale=1920:1080' -sws_flags bicubic output.mp4

ffprobe -show_streams video.mp4

ffprobe -show_frames -select_streams v -print_format csv video.mp4

ffprobe -show_frames -select_streams v -print_format csv=nokey=0 video.mp4
