.class public Lcom/ipaynow/plugin/api/IpaynowPlugin;
.super Ljava/lang/Object;


# static fields
.field private static loading:Landroid/app/ProgressDialog;

.field private static params:Ljava/util/HashMap;

.field private static visitor:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->visitor:Landroid/app/Activity;

    sput-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    sput-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->params:Ljava/util/HashMap;

    const-string v0, "plugin_phone"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Landroid/app/ProgressDialog;)V
    .locals 0

    sput-object p0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->showMessageDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->params:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->visitor:Landroid/app/Activity;

    return-object v0
.end method

.method public static pay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/ipaynow/plugin/core/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5546\u6237\u6d3b\u52a8\u5df2\u88ab\u9500\u6bc1\uff0c\u8bf7\u91cd\u8bd5"

    invoke-static {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->showMessageDialog(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-object p0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->visitor:Landroid/app/Activity;

    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    :cond_2
    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    const-string v1, "\u652f\u4ed8\u5b89\u5168\u73af\u5883\u626b\u63cf"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->visitor:Landroid/app/Activity;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    sput-object v2, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    const-string v0, "\u4f20\u5165\u53c2\u6570\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->showMessageDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p1, v4}, Lcom/ipaynow/plugin/utils/PluginTools;->a(Ljava/lang/String;Z)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->params:Ljava/util/HashMap;

    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->visitor:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ipaynow/plugin/core/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    sput-object v2, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    const-string v0, "\u7f3a\u5c11\u6743\u9650"

    invoke-static {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->showMessageDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->visitor:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ipaynow/plugin/core/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    sput-object v2, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    const-string v0, "\u7f51\u7edc\u73af\u5883\u4e0d\u901a\u7545,\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0}, Lcom/ipaynow/plugin/api/IpaynowPlugin;->showMessageDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->visitor:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ipaynow/plugin/conf/PluginConfig;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/ipaynow/plugin/api/a;

    invoke-direct {v0, v3}, Lcom/ipaynow/plugin/api/a;-><init>(B)V

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/ipaynow/plugin/api/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setEnvType(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/ipaynow/plugin/conf/PluginConfig;->l:Ljava/lang/String;

    :cond_0
    sput-object p1, Lcom/ipaynow/plugin/conf/PluginConfig;->l:Ljava/lang/String;

    return-void
.end method

.method public static setPayLoading(Landroid/app/ProgressDialog;)V
    .locals 1

    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    :cond_0
    sput-object p0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->loading:Landroid/app/ProgressDialog;

    return-void
.end method

.method private static showMessageDialog(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/ipaynow/plugin/api/IpaynowPlugin;->visitor:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
