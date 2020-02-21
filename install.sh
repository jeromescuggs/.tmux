#!/usr/bin/env bash

echo "
      ██╗ ██████╗  ███╗   ███╗ ██╗   ██╗ ██╗  ██╗ ██╗ 
      ██║ ██╔══██╗ ████╗ ████║ ██║   ██║ ╚██╗██╔╝ ██║ 
      ██║ ██████╔╝ ██╔████╔██║ ██║   ██║  ╚███╔╝  ██║ 
 ██   ██║ ██╔══██╗ ██║╚██╔╝██║ ██║   ██║  ██╔██╗  ╚═╝ 
 ╚█████╔╝ ██║  ██║ ██║ ╚═╝ ██║ ╚██████╔╝ ██╔╝ ██╗ ██╗ 
  ╚════╝  ╚═╝  ╚═╝ ╚═╝     ╚═╝  ╚═════╝  ╚═╝  ╚═╝ ╚═╝ 
"
sleep 1s
echo "grabbing submodules..."
sleep 3s
git submodule update --init 
echo "deploying tmux configuration.."
sleep 2s 
ln -s -f tmux.conf $HOME/.tmux.conf 
cp tmux.conf.local $HOME/.tmux.conf.local 

