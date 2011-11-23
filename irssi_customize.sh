#/bin/bash

sudo aptitude update && sudo aptitude safe-upgrade

sudo aptitude install irssi-scripts

mkdir -p ~/.irssi/scripts/autorun

# helps to read chats colorizing each nicks
ln -s  /usr/share/irssi/scripts/nickcolor.pl ~/.irssi/scripts/autorun/

# brings CTRL+r functionnality to irrsi like in bash
ln -s /usr/share/irssi/scripts/history_search.pl ~/.irssi/scripts/autorun/

# puts automatically /away when screen session is detached
ln -s /usr/share/irssi/scripts/screen_away.pl ~/.irssi/scripts/autorun/

# advanced windows list
wget --output-document ~/.irssi/scripts/adv_windowlist.pl http://anti.teamidiot.de/static/nei/*/Code/Irssi/adv_windowlist.pl
ln -s ~/.irssi/scripts/adv_windowlist.pl ~/.irssi/scripts/autorun/

# add /anames command that works like /names but returning away nicks in greyed
wget --output-document ~/.irssi/scripts/anames.pl https://raw.github.com/msparks/irssiscripts/master/anames.pl
ln -s ~/.irssi/scripts/anames.pl ~/.irssi/scripts/autorun/
