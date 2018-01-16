# dotfiles

## Purpose

Make it easier to switch laptops and bringmy config with me

## Usage

Getting ready to move laptops:
    ./ready_for_move.sh
    git add .
    git commit -m "ready for move"
    git push

On new laptop:
    ./setup.sh

To create phone ringtone/notification noises:

- brew install youtube-dl
- youtube-dl <link>
- In VLC, File > Convert/Stream > to mp3
- upload to google drive
- on phone, open google drive, download file
- on phone, move file to Ringtones folder
- Settings > Sound > etc
