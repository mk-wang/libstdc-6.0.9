#!/bin/sh
XCODE_DEV=$(xcode-select -p)
DES_DIRS=(
'Platforms/iPhoneOS.platform/Developer/Library/CoreSimulator/Profiles/Runtimes/iOS.simruntime/Contents/Resources/RuntimeRoot/usr/lib/'
'Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib/'
'Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/lib/'
'Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/lib/'
)
for ((i=0; i<${#DES_DIRS[@]}; ++i));do
    src=$((i+1))
    des="${XCODE_DEV}/${DES_DIRS[$i]}"
    echo "cp lib from $src to $des"
    cp -iR $src/* $des
done

exit 0
