
#!/bin/bash
#
# Script to set up Google Cloud Server
# for android ROM building
#
# Made by Sipun Ku Mahanta (Darkstar085/Sweeto143)
#

# Go to home dir
cd ~

# Install the dependencies
echo
echo =========Installing dependencies========
echo
sudo apt-get install git-core
sudo apt update -y
sudo apt install python gnupg flex bison gperf libsdl1.2-dev libesd0-dev \
squashfs-tools build-essential zip libncurses5-dev zlib1g-dev openjdk-8-jre \
openjdk-8-jdk pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev \
g++-multilib lib32z1-dev lib32ncurses5-dev gcc-multilib liblz4-* pngquant \
ncurses-dev texinfo gcc gperf patch libtool automake g++ gawk subversion expat \
libexpat1-dev python-all-dev bc libcloog-isl-dev libcap-dev autoconf libgmp-dev \
build-essential gcc-multilib g++-multilib pkg-config libmpc-dev libmpfr-dev \
lzma* liblzma* w3m adb fastboot maven ncftp htop imagemagick libssl-dev -y
echo
echo ================Done====================
echo
echo ==========Updating system==============
echo
sudo apt-get upgrade
echo
echo ================Done====================

# Install repo
echo
echo ===========Installing repo tool==============
echo
mkdir bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
sudo install repo /usr/local/bin/repo
echo
echo ================Done====================

# Add env variables to bashrc
echo
echo ========Updating bashrc===========
echo
cat <<EOT >> ~/.bashrc

export USE_CCACHE=1
EOT

# Set env from .bashrc
source ~/.bashrc
echo
echo ================Done====================


# Configure git
echo
echo ===========Configuring git=============
echo
git config --global user.email "sipunkumar85@gmail.com"
git config --global user.name "Sweeto143"
git config --global alias.cp 'cherry-pick -s'
git config --global alias.c 'commit -s'
echo
echo ================Done====================

# Done!
echo
echo ========== Everything done. =============
echo

