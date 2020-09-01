#!/usr/bin/env bash
APK_PATH="../app/build/outputs/apk/release/app_release.apk"
FIR_TOKEN="fcb12267cc2aae966babacc9486e9635"
CODE_LINK="https://fir.im/q5p2"

pwd
cd ../app

echo "---------build apk---------"
gradle assembleRelease

echo "---------upload fir begin---------"
fir publish ${APK_PATH} -T ${FIR_TOKEN}

echo "---------upload fir success---------"
open -a "/Applications/Google Chrome.app" ${CODE_LINK}
ls