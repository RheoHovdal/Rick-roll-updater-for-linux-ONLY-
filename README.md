# Rick-roll-updater-for-linux-ONLY-
its just a troll

<h3>How to use-</h3>

Make sure you make these Executable with 

chmod +x /path/to/the/.sh/
chmod +x /path/to/the/.desktop/
And also install mvp for the video to work sudo apt-get install mpv

<h4>If it wont let you right click the desktop file and click allow</h4>

<h1>Warning! the .desktop wont work unless you change it</h1>

[Desktop Entry]
Name=System Updater
Comment=Critical system update tool
Exec=gnome-terminal -- bash -c "~/SH/update.sh; exec bash" #Change the path to where the update.sh is
Icon=system-software-update
Terminal=true
Type=Application
Categories=Utility;System;
StartupNotify=true
