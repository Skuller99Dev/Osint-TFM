#!/bin/bash

# Global Variables
userid=`id -u`

#####COMENTARIOS CREADORES, FECHAS Y DEMÁS...#######

#####DATOS DE ACCESO A LA MÁQUINA#####

	#USUARIO SIN PERMISO:       {osint:osint}
    #USUARIO ADMINISTRADOR:	    {root:toor}

# Setting environment variables
export TERM=linux

# Clear Terminal (For Prettyness)
clear

# Print Title
# Check to make sure you are root!
# Print Title
echo '#######################################################################'
echo '#                          OSINT Setup                                #'
echo '#######################################################################'
echo

if [ "${userid}" != '0' ]; then
  echo '[Error]: You must run this setup script with root privileges.'
  echo
  exit 1
fi  
# Nos coloramos en el el directorio donde están instalados el resto de programas,
# para iniciar la descarga e instalación de los explicados en el documento:
	cd /home/osint/snap

#Instalando OSRFramework:
	pip install osrframework
	
#Instalando Whois:
	apt-get install whois -y

#Instalando Nmap:
	apt-get install nmap -y

#Instalando DMitry:
	apt-get install dmitry -y

#Instalando OSINT-Spy:
	cd /home/osint/snap
	git clone https://github.com/SharadKumar97/OSINT-SPY.git
	cd OSINT-SPY/
	python install_linux.py

#Instalando GyoiThon:
	cd /home/osint/snap
	git clone https://github.com/gyoisamurai/GyoiThon.git
	apt-get install python3-pip -y
	cd GyoiThon
	apt install python3-tk -y
	pip3 install –r requirements.txt

#Instalando Skiptracer:
	cd /home/osint/snap 
	git clone https://github.com/xillwillx/skiptracer.git skiptracer
	cd skiptracer
	pip install -r requirements.txt

#Instalando Sn1per:
	cd /home/osint/snap
	git clone https://github.com/1N3/Sn1per
	cd Sn1per
	sh install.sh -y 

#Instalando Metadata anonymisation toolkit (MAT):
	cd /home/osint/snap
	apt-get install mat -y

#Instalando Libextractor:
	cd /home/osint/snap
	wget https://ftp.gnu.org/gnu/libextractor/libextractor-1.3.tar.gz
	tar -xvzf libextractor-1.3.tar.gz
	cd libextractor-1.3
	apt-get install libltdl-dev -y
	./configure
	make
	make install

#Instalando CaseFile:
	cd /home/osint/snap
	wget https://www.paterva.com/malv428/Maltego.v4.2.8.12786.deb
	apt-get install default-jdk -y

#Instalando Infoga:
	cd /home/osint/snap
	Git clone https://github.com/m4ll0k/Infoga
	cd Infoga
	python setup.py install

#Instalando Belati:
	cd /home/osint/snap
	git clone https://github.com/aancw/Belati.git
	cd Belati
	git submodule update --init --recursive --remote
	pip install -r requirements.txt #please use pip with python v2

# Instalando Twint:
	cd /home/osint/snap
	git clone https://github.com/twintproject/twint.git
	cd twint
	pip3 install -r requirements.txt

#Instalando Photon:
	cd /home/osint/snap
	git clone https://github.com/s0md3v/Photon.git
	pip3 install -r requirements.txt

#Instalando Trape: 
	cd /home/osint/snap
	git clone https://github.com/jofpin/trape.git
	cd trape
	python -m pip install -r requirements.txt

#Instalando sn0int:
	cd /home/osint/snap
	apt install build-essential libsqlite3-dev libseccomp-dev publicsuffix -y
	git clone https://github.com/kpcyrd/sn0int.git
	cd sn0int
	apt-get install cargo -y
	cargo install -f --path .
	export PATH=$PATH:/root/.cargo/bin
	
#Instalando recon-ng:
	cd /home/osint/snap
	apt-get install -y recon-ng
	 
#Instalando maltego;
	cd /home/osint/snap
	wget https://maltego-downloads.s3.us-east-2.amazonaws.com/linux/Maltego.v4.2.9.12898.deb
	dpkg -i Maltego.v4.2.9.12898.deb
	rm Maltego.v4.2.9.12898.deb

#Instalando de java:
	cd /home/osint/snap
	apt install default-jre -y

#Instalando creepy
	# git clone https://github.com/jkakavas/creepy.git
	# apt-get install python-qt4
	#pip install pytz python-qt flickrapi python-instagram yapsy tweepy #google-api-python-client python-dateutil configobj dominate

#Instalando metagoofil:
	cd /home/osint/snap
	git clone https://github.com/laramies/metagoofil.git

#Instalando exitfool:
	cd /home/osint/snap
	git clone https://github.com/exiftool/exiftool.git
	perl Makefile.PL
	make
	make test
	make install

#Instalando spiderfoot:
	cd /home/osint/snap
	git clone https://github.com/smicallef/spiderfoot 
	cd spiderfoot
	pip install lxml netaddr M2Crypto cherrypy mako requests bs4
	#para lanzarlo ./sfcli.py 

#Instalando metadata-analysis.tool:
	cd /home/osint/snap
	git clone https://github.com/metadatacenter/metadata-analysis-tools.git

#Instalando EyeWitness ###revisar el setup para ver lo de sudo.	
	cd /home/osint/snap
	git clone https://github.com/FortyNorthSecurity/EyeWitness.git
	cd EyeWitness/setup
	./setup.sh
	
#Instalando EmailHarvester:
	cd /home/osint/snap
	git clone https://github.com/maldevel/EmailHarvester.git
	cd EmailHarvester
	python3 -m pip install -r requirements/base.txt	

#Instalando webhttrack:
	cd /home/osint/snap
	apt-get install webhttrack -y	

#Instalando aquatone:
	cd /home/osint/snap
	wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
	mkdir aquatone
	cd aquatone
	unzip ../aquatone_linux_amd64_1.7.0.zip
	cd ..
	rm aquatone_linux_amd64_1.7.0.zip
	
#Instalando knock pages:
	cd /home/osint/snap
	git clone https://github.com/guelfoweb/knock.git
	# requiere API... Set your virustotal API_KEY:
	python setup.py install

#Instalando Sublist3r:
	cd /home/osint/snap
	git clone https://github.com/aboul3la/Sublist3r.git
	cd Sublist3r 
	apt-get install python-requests -y
	apt-get install python-dnspython

#Instalando tinfoleak:
	#necesita api twitter para funcinonar.
	cd /home/osint/snap
	git clone https://github.com/vaguileradiaz/tinfoleak.git
	apt install python-pip python-dev build-essential python2.7-dev python-pyexiv2 python-openssl -y 
	pip install --upgrade pip  
	pip install --upgrade virtualenv 
	pip install --upgrade tweepy
	pip install --upgrade pillow
	pip install --upgrade exifread
	pip install --upgrade jinja2 
	pip install --upgrade oauth2

#Instalando sherlock:
	cd /home/osint/snap
	git clone https://github.com/sherlock-project/sherlock.git
	cd sherlock
	python3 -m pip install -r requirements.txt

echo '[success]: Installation done.'

exit
