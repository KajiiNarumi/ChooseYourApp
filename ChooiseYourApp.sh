#!/bin/bash
############################################################################
#    Kajii Narumi kajiikana69@gmail.com
#    Copyright (C) 2016 ChooiseYourApp.sh
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
##############################################################################
opcion=`/usr/bin/zenity --title="¿Qué decea hacer?" --width=300 --height=150 \
                         --text="Seleccione Una Opción" \
                         --list --column="Acción" \
                         "Instalación" "Mantenimiento" `
if [ $? -eq 0 ]
then
        IFS="|"
        for opcion in $opcion
        do
              if [ "$opcion" = "Instalación" ];
                     then
zenity --info --text="<b>Actualizar los repositorios</b>

Actualizare los repositorios para que el sistema detecte
si hay nuevas aplicaciones para instalar o nuevas versiones
Esto tambien se realizara cada vez que se instalen Aplicaciones con Repositorios"

sudo apt-get update

zenity --info --text="Asegurece que termine con:
<b> 
«Leyendo lista de paquetes... Hecho
Gtk-Message: GtkDialog mapped without a transient parent. This is discouraged.»
</b>
de caso contraio cancele el proceso y vuelva a ejecutar el script.

si el problema periste ejecute en su terminal 

«sudo apt-get update»"

zenity --info --text="La siguiente lista muestra aplicaciones sugeridas

Las aplicaciones que comienzan con un '*' requieren repositorios y Volvera a actualizar repositorios para agregar las aplicaciones"

opcion=`/usr/bin/zenity --title="Instalacon de Aplicaciones" --width=500 --height=700 \
                         --text="Selecciona las Aplicaciones a instalar" \
                         --list --column="Seleccionar" --column="Aplicacion" --column="Descripcion" \
                         --checklist TRUE "Ubuntu-extras" "Herramientas extras para ubuntu" TRUE "codec A/V" "codec audio y video" FALSE "dejadup" "Copias de seguridad" FALSE "ssh" "Conexión en red" FALSE "java" "java" FALSE "gparted" "Gestor de particiones" TRUE "gdebi" "Gestor de paquetes debian" FALSE "k3b" "Quemador de cd/dvd" FALSE "gedit" "Editor de Textos" FALSE "synaptic" "Gestor de aplicaciones" FALSE "conky" "widgets" FALSE "openshot" "Editor de videos sencillo" FALSE "kdenlive" "Editor de videos" FALSE "testdisk" "Data Recovery" FALSE "kazam" "Grabador de Escritorio" FALSE "*clipgrab" "Descargador de Youtube" FALSE "*brackets" "Editor De Texto Para Programacion" FALSE "amarok" "Reproductor de audio" FALSE "spotify" "Reproductor de audio" FALSE "vlc" "Reproductor de videos" FALSE "fslint" "gestor de archivos dulicados" FALSE "gimp" "Editor de imaenes" FALSE "guvcview" "WebCam" FALSE "*kodi" "Smart TV" FALSE "inkscape" "Creador de imagenes" FALSE "klavaro" "Mecanografia" FALSE "scribus" "Alternativa Profecionar Publisher" FALSE "thunderbird" "Gestor de E-mail" FALSE "qbittorrent" "Gestor de descargas Torrent" FALSE "wine" "Ejecutador de Programas Windows" FALSE "pinta" "Alternativas a paint" FALSE "*dvdstyler" "Creador de dvd personalizados" FALSE "audacity" "Editor de Audios" FALSE "tuxtype" "Mecangrafia para niños" FALSE "mixxx" "Alternativa a Virtual dj" FALSE "dia" "Creador de Diagramas" FALSE "glabels" "Creador de Codigos de barras" FALSE "gucash" "Gestor de cuentsa bancarias" FALSE "hamster" "Adminitrador de tiempos" FALSE "virtualbox" "Maquinas Virtuales" FALSE "osmo" "Asistente Personal" FALSE "blender" "Animaciones 3D" FALSE "y-ppa-manager" "Gestor de repositorios" FALSE "steam" "Consola de videojuegos" FALSE "billard-gl" "Juego" FALSE "chromium-bsu" "Juego" FALSE "freegish" "Juego" FALSE "frogatto" "Juego" FALSE "hedgewars" "Juego" FALSE "kmahjongg" "Juego" FALSE "ksquares" "Juego" FALSE "pokerth" "Juego" FALSE "supertux" "Juego" FALSE "supertuxkart" "Juego" FALSE "openrena" "Juego" FALSE "fretsonfire" "Juego" FALSE "sauerbraten" "Juego" `

if [ $? -eq 0 ]
then
        IFS="|"
        for opcion in $opcion
        do
               if [ "$opcion" = "Ubuntu-extras" ]
                     then
echo "Ubuntu-extras"
                     sudo apt-get install screenfetch xterm gnome-system-monitor ubuntu-restricted-extras software-properties-common flashplugin-installer rar unace p7zip p7zip-full p7zip-rar unrar lzip lhasa arj sharutils mpack lzma lzop cabextract mtp-tools ipheth-utils ideviceinstaller -y
              elif [ "$opcion" = "codec A/V" ]
                     then
echo "codec A/V"
                     sudo apt-get install pavucontrol lame vorbis-tools flac faac faad mplayer mencoder libdvdread4 mjpegtools -y
              elif [ "$opcion" = "dejadup" ]
                     then
echo "dejadup"
                     sudo apt-get install deja-dup -y
              elif [ "$opcion" = "ssh" ]
                     then
echo "ssh"
                     sudo apt-get install ssh -y
              elif [ "$opcion" = "java" ]
                     then
echo "java"
		sudo add-apt-repository ppa:webupd8team/java -y
		sudo apt-get update
		sudo apt-get installoracle-java8-installer -y
              elif [ "$opcion" = "gparted" ]
                     then
echo "gparted"
                     sudo apt-get install gparted -y
	      elif [ "$opcion" = "gdebi" ]
                     then
echo "gdebi"
                     sudo apt-get install gdebi -y
	      elif [ "$opcion" = "k3b" ]
                     then
echo "k3b"
                     sudo apt-get install k3b dvdauthor breeze frei0r-plugins kde-l10n-es -y
              elif [ "$opcion" = "gedit" ]
                     then
echo "gedit"
                     sudo apt-get install gedit -y
              elif [ "$opcion" = "synaptic" ]
                     then
echo "synaptic"
                     sudo apt-get install synaptic -y
              elif [ "$opcion" = "conky" ]
                     then
echo "conky"
                     sudo apt-get install conky-all lm-sensors -y
              elif [ "$opcion" = "openshot" ]
                     then
echo "openshot"
                     sudo apt-get install openshot -y
              elif [ "$opcion" = "kdenlive" ]
                     then
echo "kdenlive"
		sudo add-apt-repository ppa:kdenlive/kdenlive-stable -y
		sudo apt-get update
		sudo apt-get install kdenlive -y
	      elif [ "$opcion" = "testdisk" ]
                     then
echo "testdisk"
                     sudo apt-get install testdisk -y
              elif [ "$opcion" = "kazam" ]
                     then
echo "kazam"
                     sudo apt-get install kazam -y
	      elif [ "$opcion" = "*clipgrab" ]
                     then
echo "clipgrab"
		sudo add-apt-repository ppa:clipgrab-team/ppa -y
		sudo apt-get update
		sudo apt-get install clipgrab
	      elif [ "$opcion" = "*brackets" ]
                     then
echo "brackets"
		sudo add-apt-repository ppa:webupd8team/brackets -y
		sudo apt-get update
                     sudo apt-get install brackets -y
	      elif [ "$opcion" = "amarok" ]
                     then
echo "amarok"
                     sudo apt-get install amarok kde-l10n-es -y
	      elif [ "$opcion" = "spotify" ]
                     then
echo "spotify"
	sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
	echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
	sudo apt-get update
	sudo apt-get install spotify-client -y
              elif [ "$opcion" = "vlc" ]
                     then
echo "vlc"
                     sudo apt-get install vlc -y
	      elif [ "$opcion" = "fslint" ]
                     then
echo "fslint"
                     sudo apt-get install fslint -y
              elif [ "$opcion" = "gimp" ]
                     then
echo "gimp"
                     sudo apt-get install gimp -y
              elif [ "$opcion" = "guvcview" ]
                     then
echo "guvcview"
                     sudo apt-get install guvcview -y
              elif [ "$opcion" = "*kodi" ]
                     then
echo "kodi"
		sudo add-apt-repository ppa:team-xbmc/ppa -y 
		sudo apt-get update
                     sudo apt-get install kodi -y
              elif [ "$opcion" = "inkscape" ]
                     then
echo "inkscape"
                     sudo apt-get install inkscape -y
	      elif [ "$opcion" = "klavaro" ]
                     then
echo "klavaro"
                     sudo apt-get install klavaro -y
	      elif [ "$opcion" = "scribus" ]
                     then
echo "scribus"
                     sudo apt-get install scribus -y
              elif [ "$opcion" = "thunderbird" ]
                     then
echo "thunderbird"
                     sudo apt-get install thunderbird -y
              elif [ "$opcion" = "qbittorrent" ]
                     then
echo "qbittorrent"
                     sudo apt-get install qbittorrent -y
              elif [ "$opcion" = "wine" ]
                     then
echo "wine"
                     sudo apt-get install wine q4wine playonlinux winetricks -y
	      elif [ "$opcion" = "pinta" ]
                     then
echo "pinta"
                     sudo apt-get install pinta -y
              elif [ "$opcion" = "*dvdstyler" ]
                     then
echo "dvdstyler"
		sudo add-apt-repository ppa:ubuntuhandbook1/dvdstyler -y
		sudo apt-get update
                     sudo apt-get install dvdstyler -y
              elif [ "$opcion" = "audacity" ]
                     then
echo "audacity"
                     sudo apt-get install audacity -y
              elif [ "$opcion" = "tuxtype" ]
                     then
echo "tuxtype"
                     sudo apt-get install tuxtype -y
	      elif [ "$opcion" = "mixxx" ]
                     then
echo "mixxx"
                     sudo apt-get install mixxx -y
	      elif [ "$opcion" = "dia" ]
                     then
echo "dia"
                     sudo apt-get install dia -y
              elif [ "$opcion" = "glabels" ]
                     then
echo "glabels"
                     sudo apt-get install glabels -y
              elif [ "$opcion" = "gucash" ]
                     then
echo "gucash"
                     sudo apt-get install gnucash -y
	      elif [ "$opcion" = "hamster" ]
                     then
echo "hamster"
                     sudo apt-get install hamster-applet hamster-indicator -y
	      elif [ "$opcion" = "virtualbox" ]
                     then
echo "virtualbox"
                     sudo apt-get install virtualbox -y
              elif [ "$opcion" = "osmo" ]
                     then
echo "osmo"
                     sudo apt-get install osmo -y
              elif [ "$opcion" = "blender" ]
                     then
echo "blender"
                     sudo apt-get install blender -y
              elif [ "$opcion" = "y-ppa-manager" ]
                     then
echo "y-ppa-manager"
		sudo add-apt-repository ppa:webupd8team/y-ppa-manager -y
		sudo apt-get update
		sudo apt-get install y-ppa-manager -y
              elif [ "$opcion" = "steam" ]
                     then
echo "steam"
                     sudo apt-get install steam -y
	      elif [ "$opcion" = "billard-gl" ]
                     then
echo "billard-gl"
                     sudo apt-get install billard-gl -y
	      elif [ "$opcion" = "chromium-bsu" ]
                     then
echo "chromium-bsu"
                     sudo apt-get install chromium-bsu -y
              elif [ "$opcion" = "freegish" ]
                     then
echo "freegish"
                     sudo apt-get install freegish -y
              elif [ "$opcion" = "frogatto" ]
                     then
echo "frogatto"
                     sudo apt-get install frogatto -y
	      elif [ "$opcion" = "hedgewars" ]
                     then
echo "hedgewars"
                     sudo apt-get install hedgewars -y
	      elif [ "$opcion" = "kmahjongg" ]
                     then
echo "kmahjongg"
                     sudo apt-get install kmahjongg -y
              elif [ "$opcion" = "ksquares" ]
                     then
echo "ksquares"
                     sudo apt-get install ksquares -y
              elif [ "$opcion" = "pokerth" ]
                     then
echo "pokerth"
                     sudo apt-get install pokerth -y
	      elif [ "$opcion" = "supertux" ]
                     then
echo "supertux"
                     sudo apt-get install supertux -y
	      elif [ "$opcion" = "supertuxkart" ]
                     then
echo "supertuxkart"
                     sudo apt-get install supertuxkart -y
	      elif [ "$opcion" = "openrena" ]
                     then
echo "openrena"
                     sudo apt-get install openarena -y
	      elif [ "$opcion" = "fretsonfire" ]
                     then
echo "fretsonfire"
                     sudo apt-get install fretsonfire -y
	      elif [ "$opcion" = "sauerbraten" ]
                     then
echo "sauerbraten"
                     sudo apt-get install sauerbraten -y
               fi
        done
        IFS=""
        /usr/bin/zenity --info --text="<b>Terminado!</b> Para mayor información ,  \nvisita <b>http://kajiinarumi.webutu.com/</b> o contactame en Telegram <b>https://telegram.me/kajiinarumi/</b>"
else
         /usr/bin/zenity --info --text="<b>Terminado!</b> Para mayor información ,  \nvisita <b>http://kajiinarumi.webutu.com/</b> o contactame en Telegram <b>https://telegram.me/kajiinarumi/</b>"
fi



        elif [ "$opcion" = "Mantenimiento" ]
                     then
	sudo apt-get update
	sudo apt-get dist-upgrade -y
	sudo apt autoremove -y
               fi
        done
     fi



zenity --question \
--text="¿Desea salir?"

if [ $? -eq 1 ]
then
sh ChooiseYourApp.sh
else
zenity --info \
--text="<b>Terminado!</b> Para mayor información ,  \nvisita <b>http://kajiinarumi.webutu.com/</b> o contactame en Telegram <b>https://telegram.me/kajiinarumi/</b>"

exit

fi



