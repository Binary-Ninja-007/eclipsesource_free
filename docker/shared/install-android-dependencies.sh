#!/usr/bin/env bash
#
# Install required dependencies
# sdkmanager can be found in $ANDROID_HOME/tools/bin/sdkmanager
#

# Accept licences
# src http://vgaidarji.me/blog/2017/05/31/automatically-accept-android-sdkmanager-licenses/

for I in "platforms;android-10" \
         "build-tools;24.0.3"; do
    echo "Trying to update with tools/bin/sdkmanager: " $I
    yes | sdkmanager $I
done

sdkmanager --update
yes | sdkmanager --licenses
