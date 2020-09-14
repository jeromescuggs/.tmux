#!/usr/bin/env bash

DIR=$(dirname $(readlink -f $0))

echo "
      ██╗ ██████╗  ███╗   ███╗ ██╗   ██╗ ██╗  ██╗ ██╗ 
      ██║ ██╔══██╗ ████╗ ████║ ██║   ██║ ╚██╗██╔╝ ██║ 
      ██║ ██████╔╝ ██╔████╔██║ ██║   ██║  ╚███╔╝  ██║ 
 ██   ██║ ██╔══██╗ ██║╚██╔╝██║ ██║   ██║  ██╔██╗  ╚═╝ 
 ╚█████╔╝ ██║  ██║ ██║ ╚═╝ ██║ ╚██████╔╝ ██╔╝ ██╗ ██╗ 
  ╚════╝  ╚═╝  ╚═╝ ╚═╝     ╚═╝  ╚═════╝  ╚═╝  ╚═╝ ╚═╝ 
"
sleep 1s
echo "Setting root execution path from $(echo $DIR)..."
sleep 1s
echo "installing config files..."
sleep 1s

echo "looking for any prior config files and storing backups in $(echo $DIR)"
sleep 1s

if [[ -e $HOME/.tmux.conf ]]; then
	   cp $HOME/.tmux.conf $DIR/tmux-conf-original.conf
   fi 

if [[ -e $HOME/.tmux.conf.local ]]; then
		cp $HOME/.tmux.conf.local $DIR/tmux-conf-local-original.conf
fi

echo "installing configuration..."
sleep 1s
cp $DIR/tmux.conf $HOME/.tmux.conf
echo "installing tmux.conf at .tmux.conf in user home dir..."

if [[ $1 == "alt" ]]; then 
    cp $DIR/.tmux.conf.alt.local $HOME/.tmux.conf.local
    echo "installing alternate .tmux.conf.local in user home dir..."
	sleep 1s
else
    cp $DIR/.tmux.conf.local $HOME/.tmux.conf.local
    echo "installing .tmux.conf.local in user home dir..."
    sleep 1s
fi
echo "setting up session management plugins in $(echo $DIR)..."
cd $DIR && git submodule update --init 
echo "tmux-resurrection and tmux-continuum have been installed."
sleep 2s
echo "all done! open an issue or pull request if you experience any turbulence when running this script."
