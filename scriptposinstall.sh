#!/bin/bash
# autor: @magdielndantas
# base: https://github.com/adorilson/several-scripts/blob/master/ubuntu_posinstall.sh

#Sistema
upgrade(){
    echo "Atualizando packages e dando upgrade(update&upgrade)"
    sudo apt-get update --yes
    sudo apt-get upgrade --yes
}
auto_remove(){
    echo"Removendo itens desnecesarios(autoremove)"
    sudo apt-get autoremove --yes
}
remove(){
    echo "Removendo programas"
    sudo apt-get remove --yes thunderbird deja-dup mysql-common
}
#Outros
general_stuff(){
    echo "Coisas diversas"
    sudo apt-get install --yes ubuntu-restricted-extras parcellite pdfchain texlive-science texlive-xetex textlive-math-extra
}
#Desenvolvimento
devs(){
    echo "Coisas diversas para desenvolvimento"
    sudo apt-get install --yes build-essential git gedit-developer-plugins
}
java_stuff(){
    echo "Instalando itens para desenvolvimento com Java"
#sudo apt-get install --yes openjdk-7-jre-headless openjdk-7-jdk
# I use Android Studio, so I need Java Oracle
    sudo apt-get install --yes python-software-properties # just for manage repository by a easy way
    sudo add-apt-repository ppa:webupd8team/java
    sudo apt-get update --yes
    sudo apt-get install oracle-java8-installer
}
python_stuff(){
    echo "Instalando itens para desenvolvimento com Python"
    sudo apt-get install --yes python-pip python-dev
    sudo pip install virtualenv virtualenvwrapper
    sudo apt-get build-dep python-lxml
    sudo apt-get install python-tk
    sudo apt-get install python-notify
    sudo apt-get install libnotify-dev
    pip install lxml

}
    conf_virtualenvwrapper(){
        echo "Configurando virtualenvwrapper"
    # Referencia: http://www.arruda.blog.br/programacao/python/usando-virtualenvwrapper/
        mkdir ~/.virtualenvs
        cp ~/.bashrc ~/.bashrc_OLD
        echo "\n" >> ~/.bashrc
        echo "export WORKON_HOME=~/.virtualenvs" >> ~/.bashrc
        echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
        source ~/.bashrc
    }
sublime_stuff(){
    echo "Instalando Sublime Text"
    sudo add-apt-repository ppa:webupd8team/sublime-text-3
    sudo apt-get update --yes
    sudo apt-get install sublime-text-installer
}
#Comunicacao
skype_stuff(){
    echo "Baixando e instalando o Skype"
    wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64 -O /tmp/skype.deb
    sudo dpkg -i /tmp/skype.deb
}
#Design
gimp_stuff(){
    echo "Baixando e instalando o Gimp"
    sudo add-apt-repository ppa:otto-kesselgulasch/gimp -y
    sudo apt-get update --yes
    sudo apt-get install gimp -y
}
#Desempenho
zram_stuff(){
    echo "Instalando Zram"
    sudo apt-get install zram-config
}
