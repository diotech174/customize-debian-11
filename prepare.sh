#!/bin/bash
#===========================================================================================================================================
#||                     PERAPAÇÃO PARA O PRIMEIRO USO DO DEBIAN, UBUNTU E MINT COM INTERFACE: CINNAMON, LXDE OU KDE                       ||    
#===========================================================================================================================================

# INSTALA O NET-TOOLS!
NET_TOOLS_PKG="net-tools"
NET_TOOLS__OK=$(dpkg-query -W --showformat='${Status}\n' $NET_TOOLS_PKG|grep "install ok installed")
echo Checking for $NET_TOOLS_PKG: $NET_TOOLS__OK
if [ "" = "$NET_TOOLS__OK" ]; then
  	echo "No $NET_TOOLS_PKG. Setting up $NET_TOOLS_PKG."
  	sudo apt-get --yes install $NET_TOOLS_PKG
fi

#===========================================================================================================================================

# INSTALA O PACOTE DE ICONES "NUMIX CIRCLE"!
ICONS_PKG="numix-icon-theme-circle"
ICONS__OK=$(dpkg-query -W --showformat='${Status}\n' $ICONS_PKG|grep "install ok installed")
echo Checking for $ICONS_PKG: $ICONS__OK
if [ "" = "$ICONS__OK" ]; then

  	echo "No $ICONS_PKG. Setting up $ICONS_PKG."
  	sudo add-apt-repository ppa:numix/ppa
  	sudo apt update
  	sudo apt-get --yes install $ICONS_PKG
fi

#===========================================================================================================================================

# INSTALA O GOOGLE CHROME
GCHROME_PKG="google-chrome-stable"
GCHROME__OK=$(dpkg-query -W --showformat='${Status}\n' $GCHROME_PKG|grep "install ok installed")
echo Checking for $GCHROME_PKG: $GCHROME__OK
if [ "" = "$GCHROME__OK" ]; then

  	echo "No $GCHROME_PKG. Setting up $GCHROME_PKG."
  	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /home/$USER/Downloads/google-chrome-stable
  	sudo apt install /home/$USER/google-chrome-stable*
  	chmod 777 /home/$USER/google-chrome-stable*
  	rm /home/$USER/google-chrome-stable*
fi

#===========================================================================================================================================

# INSTALA O JRE SE NÃO TIVER INSTALADO!
JRE_PKG="default-jre"
JRE_OK=$(dpkg-query -W --showformat='${Status}\n' $JRE_PKG|grep "install ok installed")
echo Checking for $JRE_PKG: $JRE_OK
if [ "" = "$JRE_OK" ]; then
  	echo "No $JRE_PKG. Setting up $JRE_PKG."
  	sudo apt-get --yes install $JRE_PKG
fi

#===========================================================================================================================================

# INSTALA AS FONTES DO WINDOWS SE NÃO TIVER INSTALADO!
REQUIRED_FONTES="ttf-mscorefonts-installer"
FONTES_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_FONTES|grep "install ok installed")
echo Checking for $REQUIRED_FONTES: $FONTES_OK
if [ "" = "$FONTES_OK" ]; then
  	echo "No $REQUIRED_FONTES. Setting up $REQUIRED_FONTES."
	#INSTALANDO FONTES DA MICROSOFT
	wget http://ftp.br.debian.org/debian/pool/contrib/m/msttcorefonts/ttf-mscorefonts-installer_3.8_all.deb -P /home/$USER/Downloads/
	chmod 777 sudo apt install /home/$USER/Downloads/ttf-mscorefonts-installer*
	sudo apt install /home/$USER/Downloads/ttf-mscorefonts-installer*
	rm /home/$USER/Downloads/ttf-mscorefonts-installer*
fi

#===========================================================================================================================================
