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

echo -e ""
echo -e "${CLR_BLD_GRN}Now You are good to Go${CLR_RST}"