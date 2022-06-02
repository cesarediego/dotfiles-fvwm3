#!/bin/bash

source ~/.fvwm/settings.sh

modeicon=$(sh ~/.fvwm/scripts/mode.sh -i)
user=$(echo $USER)
up=$(uptime --pretty)
distro=$(uname -n)

if [[ $Theme = Dark ]]; then
topbarcolor="*SearchColorset \$[infostore.Widget]"
topbaritemcolor="*SearchItemBack #212121"
topbarfontcolor="*SearchItemFore #FFFFFF"
elif [[ $Theme = Light ]]; then
topbarcolor="*SearchColorset \$[infostore.Widget]"
topbaritemcolor="*SearchItemBack #FFFFFF"
topbarfontcolor="*SearchItemFore #212334"
elif [[ $Theme = Colors ]]; then
topbarcolor="*SearchColorset \$[infostore.Widget]"
topbaritemcolor="*SearchItemBack #212121"
topbarfontcolor="*SearchItemFore #FFFFFF"
elif [[ $Theme = Gradiente ]]; then
topbarcolor="*SearchColorset 13"
topbaritemcolor="*SearchItemBack #212121"
topbarfontcolor="*SearchItemFore #FFFFFF"
fi

# Top Bar
cat << EOF

*SearchWarpPointer
*SearchGeometry 0x0+250+10
$topbarcolor
*SearchFont         "xft:monofur for Powerline:Bold:size=12:antialias=True"
*SearchInputFont    "xft:monofur for Powerline:Bold:size=12:antialias=True"
*SearchButtonFont   "xft:monofur for Powerline:Bold:size=12:antialias=True"
# begin items
*SearchLine         center
*SearchText         ""
*SearchButton       restart " Menu"
*SearchCommand      Exec exec rofi -show drun
*SearchButton       restart " "
*SearchCommand      Exec exec xdg-open \$(Search)
*SearchButton       restart "  "
*SearchCommand      Exec exec alacritty -e \$(Search)
*SearchButton       restart "  "        ^M
*SearchInput        Search  80   ""
*SearchCommand Exec exec google-chrome-stable http://www.google.co.uk/search?q="\$(Search)"
*SearchButton       Restart   " Power" ^M
*SearchCommand Module FvwmButtons power
*SearchButton       mode   "$modeicon" ^M
*SearchCommand Exec sh ~/.fvwm/scripts/mode.sh -m; FvwmCommand Restart
*SearchText         ""
*SearchLine         center
EOF

# Top bar style
cat << EOF
Style "Search" !Title, !Borders, Handles, Sticky
  WindowListSkip, !Closable, \
  !Maximizable, StaysOnBottom, !FixedPosition, \
  !FixedSize, !Iconifiable, \
  !MouseFocusClickRaises, Layer 10 10, State 4, \
  !CirculateSkip \

Style "Web" !Title, !Borders, Handles, Sticky
  WindowListSkip, !Closable, \
  !Maximizable, StaysOnBottom, FixedPosition, \
  FixedSize, Iconifiable, \
  MouseFocusClickRaises, Layer 10 10, State 4, \
  CirculateSkip \

EOF

# Power menu
cat << EOF

*QuitVerifyGrabServer
*QuitVerifyColorset \$[infostore.Widget]
*QuitVerifyFont         "xft:Sans:Bold:size=18:antialias=True"
*QuitVerifyButtonFont   "xft:monofur for Powerline:Bold:size=24:antialias=True"
*QuitVerifyWarpPointer
*QuitVerifyCommand  Beep
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyText          " ${user}@${distro}"
*QuitVerifyText          " $up"
*QuitVerifyLine          center
*QuitVerifyText          "-----------------------------------------------------------"
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          expand
*QuitVerifyButton   quit      "    Poweroff "
*QuitVerifyCommand  Exec shutdown now
*QuitVerifyButton   quit      "    Reboot   "  ^M
*QuitVerifyCommand  Exec reboot
*QuitVerifyButton   quit      "  Logout   "  ^M
*QuitVerifyCommand  Exec pkill -u -9 \$USER
*QuitVerifyButton   quit      "  Lock    "  ^M
*QuitVerifyCommand  Exec i3-lock
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyLine          center
*QuitVerifyButton   quit      "   Cancel   "  ^[
*QuitVerifyCommand  Nop
*QuitVerifyLine          center
*QuitVerifyLine          center


EOF

# Power

cat << EOF


