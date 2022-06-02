CurrentMode=$(cat ~/.themes/Four/gtk-3.0/colors.css | cut -d '"' -f2)
gtk_dir=~/.config/gtk-3.0/settings.ini
rofi_dir=~/.config/rofi/config.rasi

Mode()
{
if [[ $CurrentMode ==  dark.css ]]; then
	sed -i 's/Theme="Dark"/Theme="Light"/g' ~/.fvwm/settings.sh
	echo '@import url("light.css");' > ~/.themes/Four/gtk-3.0/colors.css
	cat ~/.config/kitty/light > ~/.config/kitty/kitty.conf
	echo '@import "midnight-light.rasi"' > $rofi_dir
	xsettingsd &
	killall xsettingsd
else
	sed -i 's/Theme="Light"/Theme="Dark"/g' ~/.fvwm/settings.sh
	echo '@import url("dark.css");' > ~/.themes/Four/gtk-3.0/colors.css
	cat ~/.config/kitty/dark > ~/.config/kitty/kitty.conf
	echo '@import "midnight.rasi"' > $rofi_dir
	xsettingsd &
	killall xsettingsd
fi
}

Icon(){
	if [[ $CurrentMode == dark.css ]]; then
		echo "  Light"
	else
		echo "  Dark"
	fi
}

case $1 in
	-m) Mode ;;
	-i) Icon ;;
esac