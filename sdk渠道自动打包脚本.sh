#!/bin/sh

target_apk_path=${1}
s_dir="sdk2.0"
t_dir=$RANDOM$RANDOM

#1.反编译游戏母包app
java -jar apktool.jar d ${target_apk_path} -o ${t_dir}

#2.复制已经反编好的sdk smail代码到 已经反编译游戏母包目录
cp -r ${s_dir}/smali/okhttp3 ${t_dir}/smali
cp -r ${s_dir}/smali/okio ${t_dir}/smali
cp -r ${s_dir}/smali/com/squareup ${t_dir}/smali/com/
rm -rf ${t_dir}/smali/com/game/sdk #删除
cp -r ${s_dir}/smali/com/game/sdk/ ${t_dir}/smali/com/game/
cp -r ${s_dir}/smali/com/alibaba ${t_dir}/smali/com

#3.复制res、assets资源
cp -r ${s_dir}/assets  ${t_dir}/
for D in `find ${s_dir}/res -type d`
do
  if [[ $D != *"/values"* ]] && [[ $D != "${s_dir}/res" ]]
  then
    cp -r $D  ${t_dir}/res/
  fi
done
#4.合并xml文件
#4a AndroidManifest.xml
#4b values目录中 ids.xml, colors.xml, strings.xml 等
#4c values目录中public.xml
#5 重新生成对应的R文件
python function.py ${s_dir} ${t_dir}
#6 回编
java -jar apktool.jar b ${t_dir} -o ${t_dir}.apk
#7 签名
jarsigner -verbose -keystore xxrjy.jks -signedjar ${t_dir}_signed.apk ${t_dir}.apk xxrjy -storepass 123456
#清理
rm -rf ${t_dir}.apk
rm -rf ${t_dir}
