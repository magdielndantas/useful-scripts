#!/bin/bash
# autor: @magdielndantas

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

remove_sublimeText_stuff{
        echo "Removendo Sublime-text"
        sudo add-apt-repository ppa:webupd8team/sublime-text-3 --remove
        sudo apt-get remove sublime-text-installer --yes
        sudo apt-get autoremove --yes
    }
remove_gimp_stuff(){
        echo "Removendo Gimp"
        sudo add-apt-repository ppa:nicola-onorata/desktop --remove
        sudo apt-get remove gimp --yes
        sudo apt-get autoremove --yes
    }
remove_vlc_stuff(){
        echo "Removendo VLC"
        sudo add-apt-repository ppa:videolan/stable-daily --remove
        sudo apt-get remove vlc
        sudo apt-get autoremove
    }
remove_wine_stuff(){
        echo "Removendo Wine"
        sudo apt-get remove wine1.8 winetricks
        sudo apt-get autoremove --yes
    }
