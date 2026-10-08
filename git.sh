#!/bin/bash
# Copyright (C) 2015 Paranoid Android Project
# Copyright (C) 2018 Sipun Ku Mahanta<sipunkumar85@gmail.com>

# Define color codes for output messages
CLR_RST=$(tput sgr0)
CLR_BLD=$(tput bold)
CLR_BLD_GRN=$CLR_RST$CLR_BLD$(tput setaf 2)  # green, bold

# Display a title in green
echo -e "${CLR_BLD_GRN}██████╗  █████╗ ██████╗ ██╗  ██╗███████╗████████╗ █████╗ ██████╗ ${CLR_RST}"
echo -e "${CLR_BLD_GRN}██╔══██╗██╔══██╗██╔══██╗██║ ██╔╝██╔════╝╚══██╔══╝██╔══██╗██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_GRN}██║  ██║███████║██████╔╝█████╔╝ ███████╗   ██║   ███████║██████╔╝${CLR_RST}"
echo -e "${CLR_BLD_GRN}██║  ██║██╔══██║██╔══██╗██╔═██╗ ╚════██║   ██║   ██╔══██║██╔══██╗${CLR_RST}"
echo -e "${CLR_BLD_GRN}██████╔╝██║  ██║██║  ██║██║  ██╗███████║   ██║   ██║  ██║██║  ██║${CLR_RST}"
echo -e "${CLR_BLD_GRN}╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝${CLR_RST}"
echo -e ""
echo -e "${CLR_BLD_GRN}Setting-up Users info...${CLR_RST}"
echo -e ""

# Set global Git user information
git config --global user.email "sipunkumar85@gmail.com"
git config --global user.name "S I P U N"

# Define Git aliases
git config --global alias.cp 'cherry-pick -s'
git config --global alias.c 'commit -s'

# Basic Git aliases
git config --global alias.s 'status'
git config --global alias.ss 'status --short --branch'
git config --global alias.br 'branch --show-current'
git config --global alias.bv 'branch -vv'

# Sync and update aliases
git config --global alias.rh '!git fetch origin && git reset --hard origin/$(git branch --show-current)'
git config --global alias.fp 'fetch --prune origin'
git config --global alias.up 'pull --rebase'
git config --global alias.sync '!git fetch origin && git status -sb'

# Diff and history aliases
git config --global alias.d 'diff'
git config --global alias.ds 'diff --cached'
git config --global alias.lg 'log --oneline --decorate --graph --all'
git config --global alias.last 'log -1 --stat'

# Repository verification aliases
git config --global alias.check '!git status --short --branch && echo && git log -1 --oneline --decorate && echo && git remote -v'
git config --global alias.verify '!git status --short --branch && echo && git log -1 --format=fuller && echo && git diff HEAD^ HEAD --stat'
git config --global alias.rhead '!git fetch origin && git rev-parse HEAD && git rev-parse origin/$(git branch --show-current)'


echo -e ""
echo -e "${CLR_BLD_GRN}Now You are good to Go${CLR_RST}"