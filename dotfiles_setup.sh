#!/bin/bash

# This script sets up all dotfiles in this repo, i.e.:
# - moving old existing dotfiles into a folder .dotfiles_old (hidden) to back them up
# - symlinking (soft/symbolic links) the dotfiles in the repo to the right place (where the app expects it)

# IMPORTANT: When adding new dotfiles to the repo, do NOT forget to include them in this script!

## Variables

repo=$HOME/dotfiles			# Repository with dotfiles
backup=$HOME/.dotfiles_old	# Backup directory for old dotfiles

files="bash_aliases bashrc directory dmrc gitconfig gtkrc-2.0 profile zshrc" # !!!

## create directory .dotfiles_old in home directory
echo "Creating $backup for backup of any existing dotfiles in ~"
mkdir -p $backup
echo "...done"

## change to the dotfiles repository
echo "Changing to the $repo repository"
cd $repo
echo "...done"

## move any existing dotfiles in home to .dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving $file from home directory to $backup"
    mv ~/.$file ~/.dotfiles_old/
    echo "...done"
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
    echo "...done"
done

## print that the job is done
echo "Finished. :)"
