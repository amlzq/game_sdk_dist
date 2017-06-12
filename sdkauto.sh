#!/bin/sh

target_apk_path=${1}
source_apk_path=${2}

ext="${target_apk_path##*.}"
name="${target_apk_path%.*}"
s_dir=sdk2.0
t_dir=$name

if [ -f "${t_dir}_signed.apk" ]; then
  echo "I: ${t_dir}_signed.apk is exist"
  echo "I: try: \n    rm -f ${t_dir}_signed.apk"
  exit
fi

if [ ! -f $target_apk_path ]; then
  echo "I: ${target_apk_path} not exist"
  exit
fi

if [ ! -d $s_dir ]; then
  if [ ! -f $source_apk_path ]; then
    echo "I: ${source_apk_path} not exist"
    exit
  fi
  echo "I: Decode sdk.."
  java -jar apktool.jar d $source_apk_path -o $s_dir
  echo "I: Decode success"
fi

#1. 反编译游戏母包app
echo "I: Decode game.."
java -jar apktool.jar -f d ${target_apk_path} -o ${t_dir}
echo "I: Decode success"
#2. lib合并
echo "I: Merge lib、smail、res dirs.."
for D in `find ${t_dir}/lib -type d`
do
  if [[ $D != "${t_dir}/lib" ]]
  then
    cp -Rf ${D/$t_dir/$s_dir} ${t_dir}/lib
  fi
done

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
echo "I: Merge success"
#6 回编
echo "I: Encode game.."
java -jar apktool.jar b ${t_dir} -o ${t_dir}.apk
echo "I: Encode success"
#7 签名
echo "I: Signing.."
jarsigner -verbose -keystore xxrjy.jks -signedjar ${t_dir}_signed.apk ${t_dir}.apk xxrjy -storepass 123456
echo "I: Sign success"
#清理
# rm -rf ${t_dir}.apk
echo "I: Delete temp file.."
rm -rf ${t_dir}
echo "I: Success"
