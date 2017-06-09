#!/bin/sh

target_apk_path=${1}
source_apk_path=${2}

ext="${target_apk_path##*.}"
name="${target_apk_path%.*}"
s_dir=sdk2.0
t_dir=$name

if [ -f "${t_dir}_signed.apk" ]; then
  exit
fi

if [ ! -f $target_apk_path ]; then
  exit
fi

if [ ! -d $s_dir ]; then
  if [ ! -f $source_apk_path ]; then
    exit
  fi
  java -jar apktool.jar d $source_apk_path -o $s_dir
fi

#1.反编译游戏母包app
java -jar apktool.jar -f d ${target_apk_path} -o ${t_dir}
cp -Rf ${s_dir}/lib/armeabi ${t_dir}/lib
cp -Rf ${s_dir}/lib/armeabi-v7a ${t_dir}/lib
cp -Rf ${s_dir}/lib/mips ${t_dir}/lib
cp -Rf ${s_dir}/lib/x86 ${t_dir}/lib


rm -rf ${t_dir}/smali/com/game/sdk
rm -rf ${t_dir}/smali/com/ipaynow #删除
rm -rf ${t_dir}/smali/com/UCMobile #删除
rm -rf ${t_dir}/smali/com/unionpay #删除
rm -rf ${t_dir}/smali/com/ta #删除
rm -rf ${t_dir}/smali/com/ut #删除
#2.复制已经反编好的sdk smail代码到 已经反编译游戏母包目录
cp -rf ${s_dir}/smali/okhttp3 ${t_dir}/smali
cp -rf ${s_dir}/smali/okio ${t_dir}/smali
cp -rf ${s_dir}/smali/u ${t_dir}/smali
cp -rf ${s_dir}/smali/com/squareup ${t_dir}/smali/com/
cp -rf ${s_dir}/smali/com/game/sdk ${t_dir}/smali/com
cp -rf ${s_dir}/smali/com/alibaba ${t_dir}/smali/com
cp -rf ${s_dir}/smali/com/ipaynow ${t_dir}/smali/com
cp -rf ${s_dir}/smali/com/ta ${t_dir}/smali/com
cp -rf ${s_dir}/smali/com/ut ${t_dir}/smali/com
cp -rf ${s_dir}/smali/com/vqs ${t_dir}/smali/com
cp -rf ${s_dir}/smali/com/umeng ${t_dir}/smali/com
cp -rf ${s_dir}/smali/com/feiyou ${t_dir}/smali/com
cp -rf ${s_dir}/smali/com/UCMobile ${t_dir}/smali/com

#3.复制res、assets资源
cp -rf ${s_dir}/assets  ${t_dir}/
for D in `find ${s_dir}/res -type d`
do
  if [[ $D != *"/values"* ]] && [[ $D != "${s_dir}/res" ]]
  then
    cp -rf $D  ${t_dir}/res/
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
# rm -rf ${t_dir}.apk
rm -rf ${t_dir}
