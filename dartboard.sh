# #####################################################
# Should work on sh, dash, bash, ksh, zsh
# To use source this file from your bash profile
#
# Implemented by Allan Ramos <allansrc@protonmail.com>
#  
# ######################################################
#
# get dart html file
# then save a html filewith some details
# wget "https://dart.dev/tools/sdk/"
# get line with lastest dart version (on Stable)
# grep -o -E "/stable/[\.0-9]+" index.html
# save on file the version
# grep -o -E "/stable/[\.0-9]+" index.html | grep -o -E '[+.0-9]+' > lastest-stable

# full script
cd $HOME
mkdir $(pwd)/.dartboard
cd $(pwd)/.dartboard

if [[ -f lastest-stable ]]
then
  echo "The file lastest-stable does exist!"
  echo "Then it will be deleted"
  rm lastest-stable
  echo "done"
fi

if [[ -f index.html ]]
then
  echo "The file index does exist!"
  echo "Then it will be deleted"
  rm index.html
  echo "done"
fi

wget "https://dart.dev/tools/sdk/"
THEVERSION=$(grep -o -E "/stable/[\.0-9]+" index.html | grep -o -E '[+.0-9]+')
THEURL="https://storage.googleapis.com/dart-archive/channels/stable/release/$THEVERSION/sdk/dartsdk-linux-x64-release.zip"
wget $THEURL

echo "Cleaning environment ..."
rm lastest-stable
rm index.html