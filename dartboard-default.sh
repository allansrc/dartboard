sudo apt install git
///
$ sudo apt-get update
$ sudo apt-get install apt-transport-https
$ sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
$ sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
$ sudo apt-get update
$ sudo apt-get install dart

$ export PATH="$PATH:/usr/lib/dart/bin"
$ echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile

// java

sudo add-apt-repository ppa:linuxuprising/java
sudo apt update
sudo apt install oracle-java11-installer


//vs code

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code # or code-insiders

// node

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo apt-get install gcc g++ make

 curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
     echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
     sudo apt-get update && sudo apt-get install yarn
     
 // error emulator // unknow skin... denied access
 
 sudo apt install qemu-kvm
 
 ls -al /dev/kvm
 
 grep kvm /etc/group
 sudo adduser yourname kvm
 sudo chown user /dev/kvm
 
 ./emulator -accel-check

export ANDROID_SDK=$HOME/Library/Android/sdk
export PATH=$ANDROID_SDK/emulator:$ANDROID_SDK/tools:$PATH


#Reload you .bash_profile Or .bashrc depending on OS

Get list of emulators available: $emulator -list-avds

Launch emulator from the command line and Replace avd with the name of your emulator $emulator @avd



1%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

1 - Download Java JDK from the following link and install: http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

2 - Download the Android SDK from the following link and install: https://android-sdk.uptodown.com/windows/descargar

3 - Download Intel HAXM from the following link and install: https://software.intel.com/en-us/articles/intel-hardware-accelerated-execution-manager-intel-haxm

4 - Start the SDK Manager, install the tools and platforms you need.

5 - Start AVD Manager and create new emulator.
::::::::::::::::::::::::::::::::::::::::::::::::::

You have two ways going forward to update the emulator:

Use the new command line SDK Manager: $./sdkmanager --update (https://developer.android.com/studio/command-line/sdkmanager.html )

Use the new SDK Manager in Android Studio: https://developer.android.com/studio/intro/update.html#sdk-manager



The development I'm taking on is written in TypeScript/JavaScript, and all the instructions left behind use TNS (Telerik NativeScript) command lines to build, debug and publish the apps, for both Android and iOS.

Setting up my Windows PC with Visual Studio Code, Node.js, NativeScript, and the Android SDK, I have got to the point where I can build the application using > tns build android but I cannot run it as I have no devices.

Going back to the NativeScript instructions, it does clearly say that an Android Virtual Device is needed, but the link takes me to how to setup an AVD using Android Studio.

Well, I do not want to install another IDE just to be able to manage AVD's. I'm familiar with VS Code, all the original development was done in VS Code on iOS, and all the documentation, including screenshots, are from VS Code.

Supposedly, there is an AVDManager.exe in C:\Android\android-sdk\tools\bin\, but there certainly isn't in my installation of the SDK.

> emulator -list-avds shows nothing.

> tns device android --available-devices also lists no available emulators.

Embarcaderos' RAD Studio includes an Android emulator, but I'm using Delphi 10.2 Tokyo for desktop development, so don't have access to that emulator on this machine.

Is there any other way to create an AVD, so that when I type > tns run android from the working folder of the mobile app, it starts the emulator and runs the app within i



$ sdkmanager "platforms;android-22"
done
$ sdkmanager "system-images;android-22;default;x86_64"
done
