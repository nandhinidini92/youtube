# run python with main file and create animation
python main.py

# run ffmpeg to make video file from animation steps
ffmpeg -f image2 -pattern_type glob -i "animation/*.png" -r 25 -b 50000000 -filter:v "setpts=0.5*PTS" -an animation.flv
