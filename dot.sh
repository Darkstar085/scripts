#!/bin/bash

# Copyright (C) 2015 Paranoid Android Project

# Copyright (C) 2018 Darkstar085<sipunkumar85@gmail.com)

# Copyright (C) 2018 Sweeto143



# PA Colors

# red = errors, cyan = warnings, green = confirmations, blue = informational

# plain for generic text, bold for titles, reset flag at each end of line

# plain blue should not be used for readability reasons - use plain cyan instead

CLR_RST=$(tput sgr0)                        ## reset flag

CLR_RED=$CLR_RST$(tput setaf 1)             #  red, plain

CLR_GRN=$CLR_RST$(tput setaf 2)             #  green, plain

CLR_YLW=$CLR_RST$(tput setaf 3)             #  yellow, plain

CLR_BLU=$CLR_RST$(tput setaf 4)             #  blue, plain

CLR_PPL=$CLR_RST$(tput setaf 5)             #  purple,plain

CLR_CYA=$CLR_RST$(tput setaf 6)             #  cyan, plain

CLR_BLD=$(tput bold)                        ## bold flag

CLR_BLD_RED=$CLR_RST$CLR_BLD$(tput setaf 1) #  red, bold

CLR_BLD_GRN=$CLR_RST$CLR_BLD$(tput setaf 2) #  green, bold

CLR_BLD_YLW=$CLR_RST$CLR_BLD$(tput setaf 3) #  yellow, bold

CLR_BLD_BLU=$CLR_RST$CLR_BLD$(tput setaf 4) #  blue, bold

CLR_BLD_PPL=$CLR_RST$CLR_BLD$(tput setaf 5) #  purple, bold

CLR_BLD_CYA=$CLR_RST$CLR_BLD$(tput setaf 6) #  cyan, bold



echo -e "${CLR_BLD_GRN}Cloning device repos...${CLR_RST}"

git clone https://github.com/dotOS-Devices/android_device_lenovo_kuntao.git -b dot-o device/lenovo/kuntao

git clone https://github.com/dotOS-Devices/android_kernel_lenovo_kuntao.git -b dot-o kernel/lenovo/msm8953

git clone https://github.com/dotOS-Devices/proprietary_vendor_lenovo_kuntao.git -b dot-o vendor/lenovo

echo -e "${CLR_BLD_GRN}Cloning Complete...${CLR_RST}"

echo -e ""

echo -e "${CLR_BLD_GRN}Now You are good to Go${CLR_RST}"

echo -e ""
