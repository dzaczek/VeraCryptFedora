
#!/bin/sh

BUILD_VERA="VersCryptCompile"
mkdir ${BUILD_VERA}
cd ${BUILD_VERA}
git clone https://github.com/veracrypt/VeraCrypt.git
#WXVER="3.0.4"
WXVER=$(cat  VeraCrypt/src/Build/build_veracrypt_linux.sh | sed -n  's/.*\/wxWidgets-\([0-9]\.[0-9]\.[0-9]\)/\1/p')
WXSRC="https://github.com/wxWidgets/wxWidgets/releases/download/v${WXVER}/wxWidgets-${WXVER}.tar.bz2"
wget ${WXSRC} && tar -xvjf wxWidgets-${WXVER}.tar.bz2
cd VeraCrypt/src/Build/
./build_veracrypt_linux.sh
cd /root/VersCryptCompile/VersCryptCompile/VeraCrypt/src/Setup/Linux/
ls
echo $PWD
echo "Now Run Command"
echo 'docker cp VC:/root/VersCryptCompile/VeraCrypt/src/Setup/Linux/ ./'
