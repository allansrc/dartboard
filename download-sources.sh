wget $(apt-get install --reinstall --print-uris -qq $PKG | cut -d"'" -f2)
wget $(apt-get install --reinstall --print-uris -qq $PKG | cut -d"'" -f2 | grep "/${PKG}_")
function apt-download { wget -c $(apt-get install --reinstall --print-uris -qq $1 | cut -d"'" -f2); }
#wget line into a function, to be able to use it as a command apt-download with the package name as a parameter