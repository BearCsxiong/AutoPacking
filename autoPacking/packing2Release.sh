#!/usr/bin/env bash
USERNAME="admin@biaoqing.com"
PASSWORD="biaoqing663"

#SIGN_FILE="./biaoqing.jks"
#SIGN_PASSWORD="biaoqing663"
#SIGN_PASSWORD_ALIAS="biaoqing663"
#SIGN_ALIAS="bq"

SIGN_FILE="./keystoreoflzx.jks"
SIGN_PASSWORD="lzx1993"
SIGN_PASSWORD_ALIAS="lzx1993"
SIGN_ALIAS="lzx"

#MULPKG="../autoPacking/mulpkg.txt"

APK_PATH="../app/build/outputs/apk/release/app_release.apk"
DEST_PATH="../autoPacking/build/release"

pwd
cd ../app

echo "---------build apk---------"
gradle assembleRelease

echo "-----clean dest position—--——"
rm -rf ${DEST_PATH}

java -jar ../autoPacking/jiagu.jar -login ${USERNAME} ${PASSWORD}
java -jar ../autoPacking/jiagu.jar -importsign ${SIGN_FILE} ${SIGN_PASSWORD_ALIAS} ${SIGN_ALIAS} ${SIGN_PASSWORD}
java -jar ../autoPacking/jiagu.jar -showsign
#java -jar ../autoPacking/jiagu.jar -importmulpkg ${MULPKG}
java -jar ../autoPacking/jiagu.jar -showmulpkg
java -jar ../autoPacking/jiagu.jar -showconfig

mkdir -p ${DEST_PATH}

java -jar ../autoPacking/jiagu.jar  -jiagu ${APK_PATH} ${DEST_PATH} -autosign -automulpkg
echo "-----release mulpkg success—--——"
exit