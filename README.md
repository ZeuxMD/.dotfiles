# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
sudo apt install git
```

or if you are using Arch (btw)

```
pacman -S git
```

### Stow

```
sudo apt install stow
```

or for Arch (btw)

```
pacman -S stow
```

## Installation

First, clone the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/ZeuxMD/.dotfiles.git
$ cd .dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
