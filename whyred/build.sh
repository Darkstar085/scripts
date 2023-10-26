#!/bin/bash

# Set the ROM name based on the command-line argument
rom="$1"

if [ "$rom" = "superior" ]; then
  # SuperiorOS specific build configuration
  echo "Building SuperiorOS..."

  # Source the build environment setup
  . build/envsetup.sh

  # Set environment variables
  export BUILD_WITH_GAPPS=true
  export TZ=Asia/Kolkata
  export KBUILD_BUILD_USER="Sweeto"
  export KBUILD_BUILD_HOST="Yui"

  # Lunch the device for SuperiorOS
  lunch superior_whyred-userdebug

  # Clean the build (you can change this to suit your needs)
  make installclean

  # Start the build process
  mka bacon -j$(nproc --all) | tee build.log

  echo "SuperiorOS build completed."
  
elif [ "$rom" = "pe" ]; then
  # Pixel Experience specific build configuration
  echo "Building Pixel Experience..."

  # Source the build environment setup
  . build/envsetup.sh

  # Set environment variables
  export TZ=Asia/Kolkata
  export KBUILD_BUILD_USER="Sweeto"
  export KBUILD_BUILD_HOST="Yui"

  # Lunch the device for Pixel Experience
  lunch aosp_whyred-userdebug

  # Clean the build (you can change this to suit your needs)
  make installclean

  # Start the build process
  mka bacon -j$(nproc --all) | tee build.log

  echo "Pixel Experience build completed."

else
  echo "Unknown ROM name. Please specify 'superior' or 'pe'."
  exit 1
fi