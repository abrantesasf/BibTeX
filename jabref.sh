#!/bin/bash


# Parâmetros
DIR=$HOME/repositoriosGit/BibTeX

# Faz o pull do repositório do Emacs
cd $DIR
git pull
cd $HOME

# Inicia JabRef:
/opt/jabref/bin/JabRef

# Faz push para repositório do Emacs:
cd $DIR
git add .
su - -c 'update-alternatives --set pinentry $(update-alternatives --list pinentry | grep pinentry-gnome3)'
git commit -m "Atualizações das referências"
git push
su - -c 'update-alternatives --set pinentry $(update-alternatives --list pinentry | grep pinentry-tty)'
