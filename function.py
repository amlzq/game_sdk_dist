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
                if androidName in sChild.attrib and androidName in tChild.attrib:
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

    package_name = tRoot.attrib[packageName].replace(".", "/")
    mergeRootNode(sRoot, tRoot)
    mergeRootNode(sAppRoot, tAppRoot)
    tTree.write(tXml, encoding='utf-8', xml_declaration=True)
    return package_name

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

    _id = 0
    attr = 0
    style = 0
    dimen = 0
    menu = 0
    drawable = 0
    layout = 0
    string = 0
    color = 0
    anim = 0
    _id_pre = ""
    attr_pre = ""
    style_pre = ""
    dimen_pre = ""
    menu_pre = ""
    drawable_pre = ""
    layout_pre = ""
    string_pre = ""
    color_pre = ""
    anim_pre = ""

    for tChild in tRoot:
        stype = tChild.attrib['type'];
        iid = tChild.attrib['id'];
        if stype ==  'attr':
            attr = attr + 1
            attr_pre = iid[:6]
            continue
        if stype ==  'id':
            _id = _id + 1
            _id_pre = iid[:6]
            continue
        if stype ==  'style':
            style = style + 1
            style_pre = iid[:6]
            continue
        if stype ==  'string':
            string = string + 1
            string_pre = iid[:6]
            continue
        if stype ==  'layout':
            layout = layout + 1
            layout_pre = iid[:6]
            continue
        if stype ==  'drawable':
            drawable = drawable + 1
            drawable_pre = iid[:6]
            continue
        if stype ==  'dimen':
            dimen = dimen + 1
            dimen_pre = iid[:6]
            continue
        if stype ==  'color':
            color = color + 1
            color_pre = iid[:6]
            continue
        if stype ==  'menu':
            menu = menu + 1
            menu_pre = iid[:6]
            continue
        if stype ==  'anim':
            anim = anim + 1
            anim_pre = iid[:6]
            continue


    for sChild in sRoot:
        isSame = False
        for tChild in tRoot:
            if sChild.attrib['type'] == tChild.attrib['type']:
                if sChild.attrib['name'] == tChild.attrib['name']:
                    isSame = True
                    #tChild.attrib['id'] = sChild.attrib['id']
                    break
        if not isSame:
            stype = sChild.attrib['type'];
            val = 0
            pre = ""
            if stype ==  'attr':
                val = attr
                pre = attr_pre
            if stype ==  'id':
                val = _id
                pre = _id_pre
            if stype ==  'style':
                val = style
                pre = style_pre
            if stype ==  'string':
                val = string
                pre = string_pre
            if stype ==  'layout':
                val = layout
                pre = layout_pre
            if stype ==  'drawable':
                val = drawable
                pre = drawable_pre
            if stype ==  'dimen':
                val = dimen
                pre = dimen_pre
            if stype ==  'color':
                val = color
                pre = color_pre
            if stype ==  'menu':
                val = menu
                pre = menu_pre
            if stype ==  'anim':
                val = anim
                pre = anim_pre
            sChild.attrib['id'] = "".join([pre, str(hex(int(sChild.attrib['id'], 16) + val))[-4:]]);
            tRoot.append(sChild)


    tTree.write(tXml, encoding='utf-8', xml_declaration=True)

    for child in tRoot:
        field_template = ".field public static final {1}:I = {2}\n\n"
        name = child.attrib['name'].replace(".", "_");
        val  = child.attrib['id']
        fieldStr = field_template.replace("{1}", name).replace("{2}", val)
        stype = child.attrib['type'];
        getFiledArray(stype).append(fieldStr)

def getFiledArray(type):
    return {
        "drawable" : drawables,
        "id" : ids,
        "style" : styles,
        "menu" : menus,
        "layout" : layouts,
        "attr" : attrs,
        "string" : strings,
        "dimen" : dimens,
        "color" : colors,
        "anim": anims
    }[type]


s_dir = sys.argv[1]
t_dir = sys.argv[2]


xml.etree.ElementTree.register_namespace('android', "http://schemas.android.com/apk/res/android")
androidName     = '{http://schemas.android.com/apk/res/android}name'
packageName     = 'package'

header_template = []
header_template.append(".class public final L{2}/R${1};\n")
header_template.append(".super Ljava/lang/Object;\n")
header_template.append(".source \"R.java\"\n\n\n")

header_template.append("# annotations\n")
header_template.append(".annotation system Ldalvik/annotation/EnclosingClass;\n")
header_template.append("    value = L{2}/R;\n")
header_template.append(".end annotation\n\n")

header_template.append(".annotation system Ldalvik/annotation/InnerClass;\n")
header_template.append("    accessFlags = 0x19\n")
header_template.append("    name = \"{1}\"\n")
header_template.append(".end annotation\n\n\n")
header_template.append("# static fields\n")

footer_template = []
footer_template.append("# direct methods\n")
footer_template.append(".method public constructor <init>()V\n")
footer_template.append("    .locals 0\n")
footer_template.append("    .prologue\n")
footer_template.append("    .line 240\n\n")
footer_template.append("    invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n")
footer_template.append("    return-void\n")
footer_template.append(".end method\n")

ids = []
attrs = []
styles = []
dimens = []
menus = []
drawables = []
layouts = []
strings = []
colors = []
anims = []

package_name = mergeAndroidManifestXml("".join([s_dir, "/AndroidManifest.xml"]), "".join([t_dir, "/AndroidManifest.xml"]))
def genR(type, fields):
    fname = "R${1}.smali".replace("{1}", type)
    file = open(fname, 'w+')
    header_str = "".join(header_template)
    header_str = header_str.replace("{1}", type).replace("{2}", package_name)
    file.write(header_str)

    fields_str = "".join(fields);
    file.write(fields_str)

    footer_str = "".join(footer_template)
    file.write(footer_str)
    file.close()
    copyfile(fname, "".join([t_dir, "/smali/", package_name, "/",  fname]))
    os.remove(fname)

mergeValuesXml("".join([s_dir, "/res/values/ids.xml"]), "".join([t_dir, "/res/values/ids.xml"]));
mergeValuesXml("".join([s_dir, "/res/values/colors.xml"]), "".join([t_dir, "/res/values/colors.xml"]));
mergeValuesXml("".join([s_dir, "/res/values/dimens.xml"]), "".join([t_dir, "/res/values/dimens.xml"]));
mergeValuesXml("".join([s_dir, "/res/values/styles.xml"]), "".join([t_dir, "/res/values/styles.xml"]));
mergeValuesXml("".join([s_dir, "/res/values/strings.xml"]), "".join([t_dir, "/res/values/strings.xml"]));
mergePublicXml("".join([s_dir, "/res/values/public.xml"]), "".join([t_dir, "/res/values/public.xml"]))
genR("id", ids)
genR("attr", attrs)
genR("color", colors)
genR("drawable", drawables)
genR("style", styles)
genR("layout", layouts)
genR("menu", menus)
genR("dimen", dimens)
genR("string", strings)
genR("anim", anims)
