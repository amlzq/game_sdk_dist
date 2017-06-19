# -*- coding: utf-8 -*-
#!/usr/bin/python
import sys
import os
import xml.etree.ElementTree
from shutil import copyfile

def merge_root_node(snode, tnode):
    for schild in snode:
        issametag = False
        if schild.tag == "application":
            continue
        for tchild in tnode:
            if schild.tag == tchild.tag:
                if 'name' in schild.attrib and schild.attrib['name'] == 'app_name':
                    issametag = True
                    break
                if schild.tag == "meta-data":
                    issametag = True
                    break
                if android_name in schild.attrib and android_name in tchild.attrib:
                    if schild.attrib[android_name] == "com.game.sdk.TTWSDKActivity":
                        issametag = True
                        break
                    if schild.attrib[android_name] == tchild.attrib[android_name]:
                        tchild.text = schild.text
                        issametag = True
                        break
                if schild.attrib == tchild.attrib:
                    tchild.text = schild.text
                    issametag = True
                    break
        if not issametag:
            tnode.append(schild)

def merge_android_manifest_xml(sxml, txml, is_fix_sdk = False):
    if not os.path.isfile(sxml):
        return

    if not os.path.isfile(txml):
        copyfile(sxml, txml)
        return

    stree = xml.etree.ElementTree.parse(sxml)
    ttree = xml.etree.ElementTree.parse(txml)

    sroot = stree.getroot()
    troot = ttree.getroot()

    sapproot = sroot.find("application")
    tapproot = troot.find("application")

    if is_fix_sdk:
        print("I: Fix sdk bug...")
        android_icon = '{http://schemas.android.com/apk/res/android}icon'
        icon_value =  tapproot.attrib[android_icon]
        arr = icon_value.split("/")
        if arr[0][1:] == "drawable" and arr[1] == "ic_launcher":
            try:
                os.remove("".join([t_dir, "/res/drawable-xhdpi-v4/ic_launcher.png"]))
                os.remove("".join([t_dir, "/res/drawable-mdpi-v4/ic_launcher.png"]))
                os.remove("".join([t_dir, "/res/drawable-hdpi-v4/ic_launcher.png"]))
                print("I: Delete ic_launcher.png success")
            except:
                pass
        return

    global package_name
    package_name = troot.attrib['package'].replace(".", "/")

    merge_root_node(sroot, troot)
    merge_root_node(sapproot, tapproot)

    ttree.write(txml, encoding='utf-8', xml_declaration=True)

def merge_values_xml(sxml, txml):
    if not os.path.isfile(sxml):
        return

    if not os.path.isfile(txml):
        copyfile(sxml, txml)
        return

    stree = xml.etree.ElementTree.parse(sxml)
    ttree = xml.etree.ElementTree.parse(txml)

    sroot = stree.getroot()
    troot = ttree.getroot()

    merge_root_node(sroot, troot)
    ttree.write(txml, encoding='utf-8', xml_declaration=True)

def merge_public_xml(sxml, txml):
    stree = xml.etree.ElementTree.parse(sxml)
    ttree = xml.etree.ElementTree.parse(txml)

    sroot = stree.getroot()
    troot = ttree.getroot()
    tmp_troot = troot[:]

    R={}
    R_keys=[]

    for schild in sroot:
        issametag = False
        stype = schild.attrib['type']
        sname = schild.attrib['name']
        for tchild in tmp_troot:
            if stype == tchild.attrib['type'] and sname == tchild.attrib['name']:
                issametag = True
                break
        if not issametag:
            lastid = "0x00700000"
            lastid_pre = lastid[0:6]
            for tchild in troot:
                ttype = tchild.attrib['type']
                tlastid = tchild.attrib['id']
                tlastid_pre = tlastid[0:6]
                if int(lastid_pre, 16) < int(tlastid_pre, 16):
                    lastid_pre = tlastid_pre
                if stype == ttype:
                    if int(lastid, 16) < int(tlastid, 16):
                        lastid = tlastid
            if lastid == "0x00700000":
                lastid = str(hex(int(lastid_pre, 16) + 1)) + "0001"
            else:
                lastid = str(hex(int(lastid, 16) + 1))
            schild.attrib['id'] = lastid
            troot.append(schild)

    for tchild in troot:
        sname = tchild.attrib['name']
        stype = tchild.attrib['type']

        if "." in sname:
            sname = sname.replace(".", "_")

        if stype not in R_keys:
            R_keys.append(stype)
            fname = "R${1}.smali".replace("{1}", stype)
            R[stype]={
                'fname': fname,
                'file' : open(fname, "w+")
            }
            (R[stype]['file']).write(rfile_header(stype))

        field_template = ".field public static final {1}:I = {2}\n\n"
        fieldStr = field_template.replace("{1}", sname).replace("{2}", tchild.attrib['id'])
        (R[stype]['file']).write(fieldStr)

    ttree.write(txml, encoding='utf-8', xml_declaration=True)

    for stype in R_keys:
        (R[stype]['file']).write(rfile_footer())
        (R[stype]['file']).close()
        fname = R[stype]['fname']

        rdir = "".join([t_dir, "/smali/", package_name])
        if not os.path.isdir(rdir):
            i = 2
            while True:
                rdir = "".join([t_dir, "/smali_classes" + str(i) + "/", package_name])
                if os.path.isdir(rdir):
                    break
                if i > 10:
                    break
                i += 1
        if not os.path.isdir(rdir):
            print("E: " + rdir + " not found")
            return
        copyfile(fname, rdir+"/"+fname)
        os.remove(fname)

def rfile_header(stype):
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

def rfile_footer():
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
        is_fix_sdk = sys.argv[3]
        if is_fix_sdk == "1":
            merge_android_manifest_xml("".join([s_dir, "/AndroidManifest.xml"]), "".join([t_dir, "/AndroidManifest.xml"]), True)
        exit()

    print "I: Pyhton merge xml and gen r$*.java file"
    xml.etree.ElementTree.register_namespace('android', "http://schemas.android.com/apk/res/android")
    android_name = '{http://schemas.android.com/apk/res/android}name'

    merge_android_manifest_xml("".join([s_dir, "/AndroidManifest.xml"]), "".join([t_dir, "/AndroidManifest.xml"]))

    path = "".join([s_dir, "/res/values/"])
    files = os.listdir(path)
    for name in files:
        if name != "public.xml":
            merge_values_xml("".join([path, name]), "".join([t_dir, "/res/values/", name]))
    merge_public_xml("".join([s_dir, "/res/values/public.xml"]), "".join([t_dir, "/res/values/public.xml"]))
