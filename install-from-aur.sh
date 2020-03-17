#!/bin/sh

if [ "$1" == "$NULL" ]
then
    echo "usage: ./install-from-aur <aur-git-repo>"
else
    mkdir -p ~/.aur_pkgs
    dossier_name=$(basename "$1" | tr -d ".git")
    git clone $1 ~/.aur_pkgs/$dossier_name/
    cd  ~/.aur_pkgs/$dossier_name/ && makepkg -si
    cd -
fi
