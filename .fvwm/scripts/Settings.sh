#!/bin/bash

titlesize=$(cat ~/.fvwm/DefaultConf | sed -n 1p | awk '{print $3}')
titleposition=$(cat ~/.fvwm/DefaultConf | sed -n 2p | awk '{print $3}')
fontname=$(cat ~/.fvwm/DefaultConf | sed -n 3p | awk '{print $3}')
fontstyle=$(cat ~/.fvwm/DefaultConf | sed -n 4p | awk '{print $3}')
fontsize=$(cat ~/.fvwm/DefaultConf | sed -n 5p | awk '{print $3}')

cat << EOF

*confWarpPointer
*confFont         "xft:monofur for Powerline:Bold:size=12:antialias=True"
*confInputFont    "xft:monofur for Powerline:Bold:size=12:antialias=True"
*confButtonFont   "xft:monofur for Powerline:Bold:size=12:antialias=True"
*confItemBack #212121
*confColorSet 0

*confLine left
*confText "SET TITLE SIZE      "
*confInput Title 20    "$titlesize"
*confText "Min 20 - Max 60 - 45 Default"
*confLine left
*confText "SET TITLE POSITION  "
*confInput Position 20 "$titleposition"
*confText "Top - Right - Bottom - Left"
*confLine left
*confText "SET FONT NAME       "
*confInput FontName 20     "$fontname"
*confLine left
*confText "SET FONT STYLE      "
*confInput FontStyle 20     "$fontstyle"
*confText "Bold - Regular - Italic"
*confLine left
*confText "SET FONT SIZE       "
*confInput FontSize 20     "$fontsize"


*confLine     center
*confButton quit "set"

*confCommand Exec echo -ne "InfoStoreAdd TitleSize \$(Title)\n\
InfoStoreAdd TitlePosition TitleAt\$(Position)\n\
InfoStoreAdd DefaultFonte \$(FontName)\n\
InfoStoreAdd FontStyle \$(FontStyle)\n\
InfoStoreAdd FonteSize \$(FontSize)">\${FVWM_USERDIR}/DefaultConf; FvwmCommand Restart

EOF

