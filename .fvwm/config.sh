#!/usr/bin/env bash

source ~/.fvwm/settings.sh

cat << EOF
DesktopName 0 0
DesktopName 1 1
DesktopName 2 2
DesktopName 3 3
DesktopSize 4x1

EOF

cat << EOF
Silent Key 1 A 4 GotoDesk 0 0
Silent Key 2 A 4 GotoDesk 0 1
Silent Key 3 A 4 GotoDesk 0 2
Silent Key 4 A 4 GotoDesk 0 3
Silent Key 5 A 4 GotoDesk 0 4
Silent Key 6 A 4 GotoDesk 0 5
Silent Key 7 A 4 GotoDesk 0 6
Silent Key 8 A 4 GotoDesk 0 7
Silent Key 9 A 4 GotoDesk 0 8
Silent Key 0 A 4 GotoDesk 0 9

EOF

cat << EOF
Key 1 A 4S MovetoDesk 0 0
Key 2 A 4S MovetoDesk 0 1
Key 3 A 4S MovetoDesk 0 2
Key 4 A 4S MovetoDesk 0 3
Key 5 A 4S MovetoDesk 0 4
Key 6 A 4S MovetoDesk 0 5
Key 7 A 4S MovetoDesk 0 6
Key 8 A 4S MovetoDesk 0 7
Key 9 A 4S MovetoDesk 0 8
Key 0 A 4S MovetoDesk 0 9

EOF

cat << EOF
InfoStoreAdd term $Term
InfoStoreAdd browser $Browser
InfoStoreAdd filler $Filler
InfoStoreAdd music $Music
InfoStoreAdd editor $Editor
InfoStoreAdd chat $Chat
InfoStoreAdd menu "$Menu"

Key Return A 4  Exec exec \$[infostore.term]
Key c A 4 Exec exec \$[infostore.browser]
Key n A 4 Exec exec \$[infostore.filler]
Key s A 4 Exec exec \$[infostore.music]
Key v A 4 Exec exec \$[infostore.editor]
Key t A 4 Exec exec \$[infostore.chat]
Key m A 4 Exec exec \$[infostore.menu]

EOF

cat << EOF
Key r A 4S Restart
Key e A 4S Quit
Key q A 4 Close
Key space WT 4 Maximize
Silent Key Tab A M WindowList Root c c NoDeskSort, NoGeometry, SelectOnRelease Meta_L

DestroyFunc TileLeft
AddToFunc TileLeft
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 100
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 +0

DestroyFunc TileRight
AddToFunc TileRight
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 100
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move -0 +0

DestroyFunc TileTop
AddToFunc TileTop
+ I ThisWindow (!Shaded, !Iconic) Maximize 100 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 +0

DestroyFunc TileBottom
AddToFunc TileBottom
+ I ThisWindow (!Shaded, !Iconic) Maximize 100 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 -0

DestroyFunc TileTopLeft
AddToFunc TileTopLeft
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 +0

DestroyFunc TileTopRight
AddToFunc TileTopRight
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move -0 +0

DestroyFunc TileBottomLeft
AddToFunc TileBottomLeft
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move +0 -0

DestroyFunc TileBottomRight
AddToFunc TileBottomRight
+ I ThisWindow (!Shaded, !Iconic) Maximize 50 50
+ I ThisWindow (Maximized, !Shaded, !Iconic) Move -0 -0

Key Left A 4S TileLeft
Key Right A 4S TileRight
Key Up A 4S TileTop
Key Down A 4S TileBottom

Key Left A 4 TileBottomLeft
Key Right A 4 TileTopRight
Key Up A 4 TileTopLeft
Key Down A 4 TileBottomRight

EOF

cat << EOF
Key XF86AudioRaiseVolume A A Exec amixer set Master $Up
Key XF86AudioLowerVolume A A Exec amixer set Master $Down
Key XF86AudioMute A A Exec amixer set Master toggle

EOF

# Configuraçoes de cor
cat << EOF
ColorSet 0 fg $lf, bg $db, sh $db, hi $db, Plain, NoShape
ColorSet 1 fg $db, bg $lb, sh $lb, hi $lb, Plain, NoShape
ColorSet 2 fg $lf, bg $rd, sh $rd, hi $rd, Plain, NoShape
ColorSet 3 fg $lf, bg $gr, sh $gr, hi $gr, Plain, NoShape
ColorSet 4 fg $lf, bg $be, sh $be, hi $be, Plain, NoShape
ColorSet 5 fg $db, bg $yw, sh $yw, hi $yw, Plain, NoShape
ColorSet 6 fg $lb, bg $pr, sh $pr, hi $pr, Plain, NoShape
ColorSet 7 fg $db, bg $cy, sh $cy, hi $cy, Plain, NoShape

ColorSet 8 HGradient $gradient

ColorSet 10 fg $lf, bg $rtd, sh $rtd, hi $rtd, Plain, NoShape
ColorSet 11 fg $df, bg $rtl, sh $rtl, hi $rtl, Plain, NoShape

Colorset 12 Transparent buffer,$alpha , RootTransparent buffer

EOF

# Cores para os widgets
cat << EOF
ColorSet 13 fg $lf, bg $wd, sh $wd, hi $wd, Plain, NoShape
ColorSet 14 fg $df, bg $wl, sh $wl, hi $wl, Plain, NoShape
EOF


if [[ $Theme = Dark ]]; then
cat << EOF
InfoStoreAdd Base "0"
InfoStoreAdd Active "0"
InfoStoreAdd Inactive "0"
InfoStoreAdd BorderActive "0"
InfoStoreAdd BorderInactive "0"
InfoStoreAdd Highlight "5"
InfoStoreAdd Transparent "12"
InfoStoreAdd Widget "13"

EOF
elif [[ $Theme = Light ]]; then
cat << EOF
InfoStoreAdd Base "1"
InfoStoreAdd Active "1"
InfoStoreAdd Inactive "1"
InfoStoreAdd BorderActive "1"
InfoStoreAdd BorderInactive "1"
InfoStoreAdd Highlight "4"
InfoStoreAdd Transparent "12"
InfoStoreAdd Widget "14"

EOF

elif [[ $Theme = Colors ]]; then
cat << EOF
InfoStoreAdd Base "0"
InfoStoreAdd Active "2"
InfoStoreAdd Inactive "3"
InfoStoreAdd BorderActive "0"
InfoStoreAdd BorderInactive "0"
InfoStoreAdd Highlight "5"
InfoStoreAdd Transparent "12"
InfoStoreAdd Widget "13"
EOF

elif [[ $Theme = Gradiente ]]; then
cat << EOF
InfoStoreAdd Base "0"
InfoStoreAdd Active "8"
InfoStoreAdd Inactive "8"
InfoStoreAdd BorderActive "0"
InfoStoreAdd BorderInactive "0"
InfoStoreAdd Highlight "5"
InfoStoreAdd Transparent "12"
InfoStoreAdd Widget "13"

EOF
fi

# Usar titulo nas janelas? --
if [[ $Title = 'yes' ]]; then
	echo "Style * !Icon, Title"
elif [[ $Title = 'no' ]]; then
	echo "Style * !Icon, !Title"
else
	echo "Style * !Icon, Title"
fi

# Janelas

# Tema de icones das janelas
echo -e "InfoStoreAdd Buttonstyle $IconStyle\n"

# Tamanho dos icones e das fontes das janelas
if (( "$TitleSize" >= "0" )) && (( "$TitleSize" <= "9" )); then
	button=$(( $TitleSize - 5 ))
	echo -e "InfoStoreAdd ButtonSize :${button}x${button}-0-0"
elif (( "$TitleSize" >= "10" )) && (( "$TitleSize" <= "19" )); then
	button=$(( $TitleSize - 8 ))
	echo -e "InfoStoreAdd ButtonSize :${button}x${button}-0-0"
elif (( "$TitleSize" >= "20" )) && (( "$TitleSize" <= "29" )); then
	button=$(( $TitleSize - 8 ))
	echo -e "InfoStoreAdd ButtonSize :${button}x${button}-0-0"
elif (( "$TitleSize" >= "30" )) && (( "$TitleSize" <= "39" )); then
	button=$(( $TitleSize - 15 ))
	echo -e "InfoStoreAdd ButtonSize :${button}x${button}-0-0"
elif (( "$TitleSize" >= "40" )) && (( "$TitleSize" <= "49" )); then
	button=$(( $TitleSize - 25 ))
	echo -e "InfoStoreAdd ButtonSize :${button}x${button}-0-0"
elif (( "$TitleSize" >= "50" )) && (( "$TitleSize" <= "59" )); then
	button=$(( $TitleSize - 30 ))
	echo -e "InfoStoreAdd ButtonSize :${button}x${button}-0-0"
else
	button=$(( $TitleSize - 30 ))
	echo -e "InfoStoreAdd ButtonSize :${button}x${button}-0-0"
fi

# Posição dos boroes nas barras de titulo
if [[ $ButtonsOrientation == Left ]]; then
	B1=1
	B2=3
	B3=5
	B4=2
	B5=4
	echo "InfoStoreAdd button1 $B1"
	echo "InfoStoreAdd button2 $B2"	
	echo "InfoStoreAdd button3 $B3"
	echo "InfoStoreAdd button4 $B4"
	echo "InfoStoreAdd button5 $B5"
	echo "InfoStoreAdd WindowName RightJustified"
elif [[ $ButtonsOrientation == Right ]]; then
	B1=2
	B2=4
	B3=6
	B4=1
	B5=3
	echo "InfoStoreAdd button1 $B1"
	echo "InfoStoreAdd button2 $B2"
	echo "InfoStoreAdd button3 $B3"
	echo "InfoStoreAdd button4 $B4"
	echo "InfoStoreAdd button5 $B5"
	echo "InfoStoreAdd WindowName LeftJustified"
fi


# Barra de titulos, bordas e fontes
cat << EOF

InfoStoreAdd TitleSize $TitleSize
InfoStoreAdd FonteSize $FontSize
InfoStoreAdd BorderSize $BorderSize
InfoStoreAdd DefaultFonte ${Font}:${FontStyle}
InfoStoreAdd TitlePosition TitleAt${TitlePosition}

EOF

# Desktops e monitores
cat << EOF
DesktopConfiguration $DeskType
EWMHBAseStruts screen $M1 $LM1 $RM1 $TM1 $BM1
EWMHBAseStruts screen $M2 $LM2 $RM2 $TM2 $BM2
EOF
