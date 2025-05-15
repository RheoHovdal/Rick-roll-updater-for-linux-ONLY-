#!/bin/bash

# Colors
RED='\033[31m'
YELLOW='\033[33m'
PURPLE='\033[35m'
GREEN='\033[1;32m'
NC='\033[0m'

echo "👋 Welcome to The Updater. Do you want to update your system? (Y/N)"
read choice

if [[ "$choice" != "Y" && "$choice" != "y" ]]; then
    echo "🚫 Update canceled."
    exit 0
fi

# 50 Confirmations
for i in {1..50}; do
    echo "🔁 Confirmation $i of 50: Are you sure? (Y/N)"
    read confirm
    if [[ "$confirm" != "Y" && "$confirm" != "y" ]]; then
        echo "❌ Update canceled at confirmation $i."
        exit 0
    fi
done

echo "😐 Okay... you must *really* want to update."
sleep 3
echo "🛠️ Updating now..."
sleep 5
echo "😏 I won't update. Ha ha."

# Fake error spam
for i in {1..30}; do
    echo -e "${RED}Error failed to update${NC}"
    sleep 0.2
done

sleep 2
clear

# ASCII Rick Astley
ascii_frames=(
"       ░░░░░░░░░░░░░░░░
       ░░░░░░░▄░░░░░▄░░
       ░░░░░▌▒█░░░▐█▒▐░
       ░░░░▐▒▒▒░░░▐▒▒▒░
       ░░░░▐▒▒▒░░░▐▒▒▒░
       ░░░░▐▒▒▒░░░▐▒▒▒░
       ░░░░▐▒▒▒▒▒▒▒▒▒▒░
       ░░░░▐▒▒▒▒▒▒▒▒▒▒░
       ░░░░▐▒▒▒░░░▐▒▒▒░
       ░░░░▐▒▒▒░░░▐▒▒▒░
       ░░░░░▀▀▀▀▀▀▀▀▀░░"
)

# Animate ASCII
for i in {1..5}; do
    clear
    echo -e "${PURPLE}${ascii_frames[0]}${NC}"
    sleep 0.3
    clear
    echo -e "${PURPLE}${ascii_frames[0]/▒/░}${NC}"
    sleep 0.3
done

# Rickroll URL
rickroll_url="https://www.youtube.com/watch?v=dQw4w9WgXcQ"

# Play in window using mpv (no browser, no ads)
if command -v mpv &> /dev/null; then
    mpv "$rickroll_url" --no-terminal --really-quiet --force-window=yes &
else
    echo -e "${YELLOW}🎧 mpv is not installed. Please install it with:\n  sudo apt install mpv yt-dlp${NC}"
    exit 1
fi

# Rickroll lyrics
lyrics=(
    "Never gonna give you up"
    "Never gonna let you down"
    "Never gonna run around and desert you"
    "Never gonna make you cry"
    "Never gonna say goodbye"
    "Never gonna tell a lie and hurt you"
)

for line in "${lyrics[@]}"; do
    echo -e "${YELLOW}🎶 $line${NC}"
    sleep 2
done

echo -e "\n${GREEN}Rickrolled successfully. You are not updated 🎤${NC}"
