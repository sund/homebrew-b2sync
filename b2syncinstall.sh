#!/bin/bash

installDir="/usr/local/bin"
logsDir="/Library/Logs/b2sync/"
installURL="https://www.backblaze.com/b2/docs/b2sync_for_mac.zip"
extractedFolder="b2sync_for_mac"
tmpDir="/tmp"
groupOwner="admin"
scriptVer="v0.3"

## Verify /usr/local/bin/ exists
# should if brew is installed
if [ -d "$installDir" ]; then
  echo Directory $installDir exists!
  if [ -w "$installDir" ]; then
    echo Directory $installDir is writable!
  else
    echo "Directory $installDir is NOT writable!"
    echo "Attempting to correct..."
    chmod g+rwx $installDir
  fi
else
  # should not get to here if brew is working
  mkdir -p $installDir
  chgrp $groupOwner $installDir
  chmod g+rwx $installDir
fi

## Verify logs dir exists
if [ -d "$logsDir" ]; then
  echo Directory $logsDir exists!
  if [ -w "$logsDir" ]; then
    echo Directory $logsDir is writable!
  else
    echo Directory $logsDir is NOT writable!
    echo "Attempting to correct..."
    chmod 775 $logsDir
  fi
else
  mkdir -p $installDir
  chgrp admin $installDir
  chmod 775 $installDir
fi

## Copy b2sync to $installDir
echo "Downloading from $installURL ..."
curl "$installURL" | tar -xf- -C "$tmpDir"
cp "$tmpDir"/$extractedFolder/b2sync $installDir
if [ "`stat -f %-Sg $installDir/b2sync`" = "$groupOwner" ]; then
  echo "$installDir/b2sync is owned by group $groupOwner!"
else
  echo "Changing group of "$installDir"/b2sync to $groupOwner ..."
  chown $UID:$groupOwner "$installDir"/b2sync
fi
rm -rf "$tmpDir"/$extractedFolder

## Get version of b2sync
echo -n "It looks like b2sync is installed at "
$installDir/b2sync -otheroption -version

echo "$0 is $scriptVer"
