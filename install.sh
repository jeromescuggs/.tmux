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
echo "Setting root execution path from $($DIR)..."
sleep 1s
echo "installing config files..."
sleep 1s

echo "looking for any prior config files and storing backups in $($DIR)"
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
cp $DIR/.tmux.conf.local $HOME/.tmux.conf.local
echo "installing .tmux.conf.local in user home dir..."
sleep 1s

echo "setting up session management plugins in $($DIR)..."
cd $DIR && git submodule update --init 
echo "tmux-resurrection and tmux-continuum have been installed."
sleep 2s
echo "all done! open an issue or pull request if you experience any turbulence when running this script."
