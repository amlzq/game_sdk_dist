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
                    break;
                if sChild.tag == "meta-data":
                    isSame = True
                    break;
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


def mergeAndroidManifestXml(sXml, tXml):
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
    global package_name
    package_name = tRoot.attrib['package'].replace(".", "/")
    mergeRootNode(sRoot, tRoot)
    mergeRootNode(sAppRoot, tAppRoot)

    tTree.write(tXml, encoding='utf-8', xml_declaration=True)

def mergeValuesXml(sXml, tXml):
    if not os.path.isfile(sXml):
        return;

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
    X={}

    for tChild in tRoot:
        stype = tChild.attrib['type']
        iid = tChild.attrib['id']

        val = 0
        if stype in X:
            val = X[stype]["val"] + 1
        X = {
            "val": val,
            "pre": iid[:6]
        }

    for sChild in sRoot:
        isSame = False
        for tChild in tRoot:
            if sChild.attrib['type'] == tChild.attrib['type'] and sChild.attrib['name'] == tChild.attrib['name']:
                isSame = True
                #tChild.attrib['id'] = sChild.attrib['id']
                break
        if not isSame:
            stype = sChild.attrib['type']

            if stype not in Rkeys:
                Rkeys.append(stype)

            sChild.attrib['id'] = "".join([X["pre"], str(hex(int(sChild.attrib['id'], 16) + X["val"]))[-4:]]);
            tRoot.append(sChild)

            field_template = ".field public static final {1}:I = {2}\n\n"
            fieldStr = field_template.replace("{1}", sChild.attrib['name']).replace("{2}", sChild.attrib['id'])
            R[stype].append(fieldStr)

    tTree.write(tXml, encoding='utf-8', xml_declaration=True)

    for stype in Rkeys:
        genR(stype, R[stype]);

def genR(type, fields):
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
    # static fields\n\
    {3}\
    # direct methods\n\
    .method public constructor <init>()V\n\
        .locals 0\n\
        .prologue\n\
        .line 240\n\n\
        invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n\
        return-void\n\
    .end method\n"

    fname = "R${1}.smali".replace("{1}", type)
    file = open(fname, 'w+')
    template = template.replace("{1}", type).replace("{2}", package_name).replace("{3}", "".join(fields))
    file.write(template)
    file.close()
    copyfile(fname, "".join([t_dir, "/smali/", package_name, "/",  fname]))
    os.remove(fname)

if __name__ == '__main__':
    s_dir = sys.argv[1]
    t_dir = sys.argv[2]

    xml.etree.ElementTree.register_namespace('android', "http://schemas.android.com/apk/res/android")
    androidName     = '{http://schemas.android.com/apk/res/android}name'

    mergeAndroidManifestXml("".join([s_dir, "/AndroidManifest.xml"]), "".join([t_dir, "/AndroidManifest.xml"]))

    path = "".join([s_dir, "/res/values/"])
    files = os.listdir(path)
    for name in files:
        if name != "public.xml":
            mergeValuesXml("".join([path, name]), "".join([t_dir, "/res/values/", name]))
    mergePublicXml("".join([s_dir, "/res/values/public.xml"]), "".join([t_dir, "/res/values/public.xml"]))
