# -*- coding: utf-8 -*-
#!/usr/bin/python
import sys
import os
import xml.etree.ElementTree
from shutil import copyfile

def mergeRootNode(sNode, tNode):
    for sChild in sNode:
        isSame = False
        if sChild.tag == "application":
            continue
        for tChild in tNode:
            if sChild.tag == tChild.tag:
                if 'name' in sChild.attrib and sChild.attrib['name'] == 'app_name':
                    isSame = True
                    break
                if sChild.tag == "meta-data":
                    isSame = True
                    break
                if androidName in sChild.attrib and androidName in tChild.attrib:
                    if sChild.attrib[androidName] == "com.game.sdk.TTWSDKActivity":
                        isSame = True
                        break
                    if sChild.attrib[androidName] == tChild.attrib[androidName]:
                        tChild.text = sChild.text
                        isSame = True
                        break
                if sChild.attrib == tChild.attrib:
                    tChild.text = sChild.text
                    isSame = True
                    break
        if not isSame:
            tNode.append(sChild)


def mergeAndroidManifestXml(sXml, tXml, fix_sdk = False):
    if not os.path.isfile(sXml):
        return

    if not os.path.isfile(tXml):
        copyfile(sXml, tXml)
        return

    sTree = xml.etree.ElementTree.parse(sXml)
    tTree = xml.etree.ElementTree.parse(tXml)

    sRoot = sTree.getroot()
    tRoot = tTree.getroot()

    sAppRoot = sRoot.find("application")
    tAppRoot = tRoot.find("application")


    if fix_sdk:
        global icon_name
        androidIcon = '{http://schemas.android.com/apk/res/android}icon'
        icon_name =  tAppRoot.attrib[androidIcon]
        arr = icon_name.split("/")
        if arr[0][1:] == "drawable" and arr[1] == "ic_launcher":
            os.remove("".join([t_dir, "/res/drawable-xhdpi-v4/ic_launcher.png"]))
            os.remove("".join([t_dir, "/res/drawable-mdpi-v4/ic_launcher.png"]))
            os.remove("".join([t_dir, "/res/drawable-hdpi-v4/ic_launcher.png"]))
            print("I: Delete ic_launcher.png success")
        return

    global package_name
    package_name = tRoot.attrib['package'].replace(".", "/")

    mergeRootNode(sRoot, tRoot)
    mergeRootNode(sAppRoot, tAppRoot)

    tTree.write(tXml, encoding='utf-8', xml_declaration=True)

def mergeValuesXml(sXml, tXml):
    if not os.path.isfile(sXml):
        return

    if not os.path.isfile(tXml):
        copyfile(sXml, tXml)
        return

    sTree = xml.etree.ElementTree.parse(sXml)
    tTree = xml.etree.ElementTree.parse(tXml)

    sRoot = sTree.getroot()
    tRoot = tTree.getroot()

    mergeRootNode(sRoot, tRoot)
    tTree.write(tXml, encoding='utf-8', xml_declaration=True)

def mergePublicXml(sXml, tXml):
    sTree = xml.etree.ElementTree.parse(sXml)
    tTree = xml.etree.ElementTree.parse(tXml)

    sRoot = sTree.getroot()
    tRoot = tTree.getroot()

    R={}
    Rkeys=[]

    for sChild in sRoot:
        isSame = False
        stype = sChild.attrib['type']
        sname = sChild.attrib['name']

        for tChild in tRoot:
            if stype == tChild.attrib['type'] and sname == tChild.attrib['name']:
                isSame = True
                #tChild.attrib['id'] = sChild.attrib['id']
                break
        if not isSame:
            lastid = "0x00700000"
            lastpre = lastid[0:6]
            for tChild in tRoot:
                ttype = tChild.attrib['type']
                tlastid = tChild.attrib['id']
                tlastpre = tlastid[0:6]
                if int(lastpre, 16) < int(tlastpre, 16):
                    lastpre = tlastpre
                if stype == ttype:
                    if int(lastid, 16) < int(tlastid, 16):
                        lastid = tlastid
            if lastid == "0x00700000":
                lastid = str(hex(int(lastpre, 16) + 1)) + "0001"
            else:
                lastid = str(hex(int(lastid, 16) + 1))
            sChild.attrib['id'] = lastid
            tRoot.append(sChild)

    for tChild in tRoot:
        sname = tChild.attrib['name']
        stype = tChild.attrib['type']

        if "." in sname:
            sname = sname.replace(".", "_")

        if stype not in Rkeys:
            Rkeys.append(stype)
            fname = "R${1}.smali".replace("{1}", stype)
            R[stype]={
                'fname': fname,
                'file' : open(fname, "w+")
            }
            (R[stype]['file']).write(templateHeader(stype))

        field_template = ".field public static final {1}:I = {2}\n\n"
        fieldStr = field_template.replace("{1}", sname).replace("{2}", tChild.attrib['id'])
        (R[stype]['file']).write(fieldStr)

    tTree.write(tXml, encoding='utf-8', xml_declaration=True)

    for stype in Rkeys:
        (R[stype]['file']).write(templateFooter())
        (R[stype]['file']).close()
        fname = R[stype]['fname']
        copyfile(fname, "".join([t_dir, "/smali/", package_name, "/",  fname]))
        os.remove(fname)

def templateHeader(stype):
    template = ".class public final L{2}/R${1};\n\
    .super Ljava/lang/Object;\n\
    .source \"R.java\"\n\n\n\
    # annotations\n\
    .annotation system Ldalvik/annotation/EnclosingClass;\n\
        value = L{2}/R;\n\
    .end annotation\n\n\
    .annotation system Ldalvik/annotation/InnerClass;\n\
        accessFlags = 0x19\n\
        name = \"{1}\"\n\
    .end annotation\n\n\n\
    # static fields\n"
    return template.replace("{1}", stype).replace("{2}", package_name)


def templateFooter():
    template = "# direct methods\n\
    .method public constructor <init>()V\n\
        .locals 0\n\
        .prologue\n\
        .line 240\n\n\
        invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n\
        return-void\n\
    .end method\n"
    return template


if __name__ == '__main__':
    s_dir = sys.argv[1]
    t_dir = sys.argv[2]
    if len(sys.argv) == 4:
        fix_sdk = sys.argv[3]
        if fix_sdk == "1":
            mergeAndroidManifestXml("".join([s_dir, "/AndroidManifest.xml"]), "".join([t_dir, "/AndroidManifest.xml"]), True)
        exit()

    print "I: Pyhton merge xml and gen r$*.java file"
    xml.etree.ElementTree.register_namespace('android', "http://schemas.android.com/apk/res/android")
    androidName = '{http://schemas.android.com/apk/res/android}name'

    mergeAndroidManifestXml("".join([s_dir, "/AndroidManifest.xml"]), "".join([t_dir, "/AndroidManifest.xml"]))

    path = "".join([s_dir, "/res/values/"])
    files = os.listdir(path)
    for name in files:
        if name != "public.xml":
            mergeValuesXml("".join([path, name]), "".join([t_dir, "/res/values/", name]))
    mergePublicXml("".join([s_dir, "/res/values/public.xml"]), "".join([t_dir, "/res/values/public.xml"]))
