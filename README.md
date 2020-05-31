jrmux II: multiplexer boogaloo
==============================

A contemporary refresh of [gpakosz]'s most excellent [tmux configuration] files, tweaked to make the most of modern terminals.

![screenshot](screen.png)

![Screenshot](jrmux2.png)

Installation
------------

For an automated install, simply clone this folder into your home directory, navigate to it, and run `install.sh`:

```
cd
git clone https://github.com/jeromescuggs/.tmux
cd .tmux && ./install.sh
```

**NOTE**: during the installation, the install script will look for `.tmux.conf` and `.tmux.conf.local` files in the `$HOME` directory, make copies, and store the copies in this git folder. 

@[gpakosz] maintains a very thorough `README.md` file which covers a bunch of answers and troubleshooting tips. Initially this repo contained a copy of his readme with slight edits at the top, which can still be seen by viewing the `README-original.md` file. 

Alternate version
-----------------

I have included an alternate config file, `.tmux.conf.alt.local`. It makes some changes to the way the statusbar information is laid out, in an effort to slim down the statusbar, by reducing unused spaces while also preserving the aesthetic styling. 

A major change with this version is the 'active window' title has been permanently moved to the left statusbar display. The active window's tab itself is labelled with a '⌦' symbol. 

[gpakosz]: https://github.com/gpakosz
[tmux configuration]: https://github.com/gpakosz/oh-my-tmux
