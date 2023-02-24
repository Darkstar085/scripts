#!/bin/bash

# Set the rom name
rom="$1"

# Build the rom by the command input
if [ "$rom" = "superior" ]
then
  . build/envsetup.sh
  export BUILD_WITH_GAPPS=true
  export TZ=Asia/Kolkata
  export KBUILD_BUILD_USER="Sweeto"
  export KBUILD_BUILD_HOST="Yui"
  lunch superior_whyred-userdebug
  make installclean
  mka bacon -j$(nproc --all) | tee build.log
elif [ "$rom" = "pe" ]
then
  . build/envsetup.sh
  export TZ=Asia/Kolkata
  export KBUILD_BUILD_USER="Sweeto"
  export KBUILD_BUILD_HOST="Yui"
  lunch aosp_whyred-userdebug
  make installclean
  mka bacon -j$(nproc --all) | tee build.log
fi
