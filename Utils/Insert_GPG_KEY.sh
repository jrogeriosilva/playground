echo 'Insira a Chave GPG' && read GPGKEY && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys $GPGKEY && gpg -a --export $GPGKEY | sudo apt-key add -
