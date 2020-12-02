#!/bin/bash
# File              : get_bird_songs.sh
# Author            : Amar Lakshya <amar.lakshya@protonmail.com>
# Date              : 02.12.2020
# Last Modified Date: 02.12.2020
# Last Modified By  : Amar Lakshya <amar.lakshya@protonmail.com>

SONG_DIR="songs"
SONG_VIDEO="https://www.youtube.com/watch?v=WarL4vURLYw"
SONG_LENGTH="1200"

mkdir -p "$SONG_DIR" && \
    cd "$SONG_DIR" && \
    youtube-dl --extract-audio --audio-format mp3 "$SONG_VIDEO"  -o full_song.mp3 && \
    rm full_song.mp3 && \
    ffmpeg -i full_song.mp3  -f segment -segment_time "$SONG_LENGTH" -c copy song_%03d.mp3 && \
    cd ../





