#!/usr/bin/env bash

#---------------------------------------------
# Programas que serao usado no sistema
# podem ser alterados aqui.
# Se algum promagama for substituino no sistema,
# tambem deve ser alterado aqui
#---------------------------------------------

Term='kitty'
Browser='google-chrome-stable'
Filler='nemo'
Editor='subl'
Chat='telegram-desktop'
Menu="rofi -theme ~/.config/rofi/config.rasi -show drun"

# Volume
Up='10%+'
Down='10%-'

#---------------------------------------------
# Define as cores que serao usadas pelo Fvwm.
# Voce pode altrterar essas cores como quiser,
# para chegar a combinaçẽs diferentes.
#---------------------------------------------
# Cores para o tema escuro
db='#1c1d21'		# Dark background
wd='#1c1d21' 		# Dark color for widgets

# Cores para o tema claro
lb='#EBF5F7'		# Light background
wl='#EBF5F7' 		# Light color for widgets

# Cores para as fontes
df='#212121'		# Dark font
lf='#F5F5F5'		# Light foreground

# Cores para temas coloridos
rd='#ef476f'		# Vermelho
gr='#06d6a0' 		# Verde
be='#118ab2'		# Azul
yw='#ffd166'		# Amarelo
pr='#9b5de5'		# Roxo
cy='#00b4d8'		# Cyan

# Gradiente 
gradient='1000 2 #c8b6ff 50 #b8c0ff 50 #bbd0ff 50'

# Cores transparentes
alpha="fg #FFFFFF, bg average, sh #1c1d21, hi #1c1d21, Tint #1c1d21 0"

#---------------------------------------------
# Selecione qual tema deve ser usado.
# As opções são:
#	=> Dark
#	=> Light
# 	=> Colors
# 	=> Gradiente
#---------------------------------------------
Theme="Dark"

#---------------------------------------------
# Selecione o tema de icones que sera usado
# na barra de titulos.
#	=> Candy
# 	=> Colors
#	=> CircleWhite
#	=> CircleDark
#	=> CircleYellow
#	=> Mist
#---------------------------------------------
IconStyle="Mist"

#---------------------------------------------
# Selecione se o Fvwm deve ou nao usar barras
# nas janelas.
#	=> yes
#	=> no
#---------------------------------------------
Title="yes"

#---------------------------------------------
# Informe o tamanho das barras de titulos
# das janelas. Nao existem limites minimos
# ou maximos para isso, mas sim
# valores recomendados
#	=> 20 Minimo
#	=> 60 Maximo
#	=> 45 Padrão
#---------------------------------------------
TitleSize=40

#---------------------------------------------
# Defina o tamanho das bordas das janelas
#---------------------------------------------
BorderSize=6

#---------------------------------------------
# Selecione o nome e o tipo de fonte que sera
# usado pelo Fvwm, em menus e barras de titulo.
# Os tipos sao:
#	=> Regular
#	=> Bold
#	=> Italic
# O tamanho das fontes serao calculados de
# acordo com o tamanho da barra de titulos.
# Verifique no seu sistema as
# fontes disponiveis
#---------------------------------------------
Font="monofur for Powerline"
FontStyle="Bold"
FontSize=10
#---------------------------------------------
# Indique em que posição a barra de titulos
# ira ficar em relação as janelas
#	=> top/Top
# 	=> right/Right
#	=> bottom/Bottom
#	=> left/Left
#---------------------------------------------
TitlePosition="top"

#---------------------------------------------
# De que lado da barra de titulos os botoes
# devem estar localizados
#	=> Left
#	=> Right
#---------------------------------------------
ButtonsOrientation="Left"


#------------------------------------------------------------------------------------------------
# Configurações do desktop Fvwm.
# Nessa parete da configurações é possivel setar o como o Fvwm,
# ira lidar com os monitores
#
# O Fvwm tem 3 formas de lidar com monitores.
#	=> global
#	O padrão. Isso significa que todas as telas mostram as mesmas áreas de trabalho/páginas.
#
#	=> per-monitor
#	Cada monitor tem sua própria área de trabalho/páginas virtuais.
#	Para este modo é recomendado que o FvwmPager esteja configurado para
#	use a opção de configuração do monitor, para que apenas as janelas
#	monitor específico são mostrados.
#
#	=> shared
#	Os desktops virtuais são compartilhados em todos os monitores e cada
#	monitor mostra uma única área de trabalho de cada vez. Se um monitor mudar para um
#	desktop sendo visualizado por outro, os dois monitores trocam o que
#	desktop que estão visualizando. Isso é semelhante a como Xmonad ou Herbsflutwm
#	lidar com mesas. Este modo só funciona com dois ou mais monitores.
#------------------------------------------------------------------------------------------------
# Tipo
DeskType="per-monitor"

# Nome dos monitores conectados
M1="VGA1"
M2="HDMI1"
M3=""

# Distancia das bordas das janelas em relação as bordas da tela
# Monitor 1
LM1=10 	# Esquerda
RM1=10 	# Direita
TM1=10 	# Superior
BM1=10 	# Inferior

# Monitor 2
LM2=5 	# Esquerda
RM2=5 	# Direita
TM2=5 	# Superior
BM2=5 	# Inferior

# Monitor 3
LM3=10 	# Esquerda
RM3=10 	# Direita
TM3=10 	# Superior
BM3=10 	# Inferior

