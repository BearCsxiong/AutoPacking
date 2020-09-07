# 360加固自动打包使用指南

1. 配置gradle

  > - open -e .bash_profile 打开bash_profile文件

  > - 将下列内容在bash_profile文件中填写并替换部分本地的路径
  > - GRADLE_HOME=/{YourGradleLibraryPath}
  > - export GRADLE_HOME
  > - export PATH=$PATH:$GRADLE_HOME

  > - source ~/.bash_profile 使bash_profile生效

  > - gradle -version 验证gradle环境是否配置

2. 打开release.sh文件,填写所有需要配置的内容
  > - USERNAME 360账号名称
  > - PASSWORD 密码
  > - SIGN_FILE 签名文件
  > - SIGN_PASSWORD 签名密码
  > - APK_PATH 需要打包文件地址
  > - DEST_PATH 加固后地址(可不修改 直接生成在autoPacking/build/release中)
