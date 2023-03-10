#!/usr/bin/env zsh

source /home/fw05/.zshrc

echo "Launching Application, please wait!"
#--tab --title="ros core kill" -e "zsh -c \"killall -9 roscore;exec zsh\"" \
#--tab --title="ros master kill" -e "zsh -c \"killall -9 rosmaster;exec zsh\"" \
#--tab --title="kill terminal" -e "zsh -c \"killall -3 gnome-shell;exec zsh\""
#gnome-terminal --geometry=40x40  \
#--tab --title="ros node kill" -e "zsh -c \"rosnode kill -a;exec zsh\"" \
#--tab --title="ros node kill" -e "zsh -c \"reboot;exec zsh\""


gnome-terminal --geometry=40x40  \
--tab --title="ros node kill" -e "zsh -c \"kill $(pgrep) ros;sleep 2s;kill $(pgrep) ros;exec zsh\"" \
#--tab --title="ros master kill" -e "zsh -c \"sleep 5s;killall -9 rosmaster;exec zsh\"" \
#--tab --title="ros core kill" -e "zsh -c \"sleep 5s;killall -9 roscore;exec zsh\""
