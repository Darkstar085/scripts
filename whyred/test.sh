#!/bin/bash
set -e

myname="$0"

function help() {
    cat <<EOF
Syntax:
  $myname <rom type> <branch>
ROM types:
  dotOS (Droidontime)
  cardinal (Cardinal AOSP)
  lluvia (Lluvia OS)
Branchs of roms:
* dotOS
  * dot-o
  * dot-p
  
* cardinal
  * oreo-mr1
  
* lluvia
  * lluvia-2.x
  * lluvia-3.x
for example:
$myname lineage lineage-15.1
EOF
}


if [ -z "$2" ];then
	>&2 help
else

rom=$1
branch=$2

sudo apt-get update
sudo apt-get install openjdk-8-jdk phablet-tools git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip schedtool meld lzop maven bc -y
git config --global user.name "Sipun Ku Mahanta"
git config --global user.email "sipunkumar85@gmail.com"

if [ "$rom" == "cardinal" ];then
	mkdir -p $rom"_"$branch
	cd $rom"_"$branch
	repo init -u git://github.com/Cardinal-AOSP/manifest.git -b $branch -m crd.xml
elif [ "$rom" == "lluvia" ];then
	mkdir -p $rom"_"$branch
	cd $rom"_"$branch
	repo init -u https://github.com/LLuviaOS/platform_manifest -b $branch
elif [ "$rom" == "dotOS" ];then
	mkdir -p $rom"_"$branch
	cd $rom"_"$branch
	repo init -u https://github.com/DotOS/manifest.git -b $branch
fi

function clone() {
if [ -d .repo/local_manifests ];then
    rm -rf .repo/local_manifests
    git clone https://github.com/sweeto143/local_manifests.git -b $branch .repo/local_manifests
fi
}

## clone manifest
read -p "Do you want to clone local_manifest? (y/N) " clone


if [[ $clone == *"y"* ]];then
clone
fi

repo sync -j8 --force-sync

# use ccache
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
prebuilts/misc/linux-x86/ccache/ccache -M 50G
echo -e "export USE_CCACHE=1 \nexport CCACHE_DIR=~/.ccache" >> .bashrc

cd ~

curl -O https://raw.githubusercontent.com/sweeto143/scripts/whyred/build.sh

## compile rom
function build() {
~/build.sh
}

read -p "Do you want to compile now? (y/N) " build
if [[ $build == *"y"* ]];then
build
fi

fi