.class public Lcom/game/sdk/TTWAppService;
.super Landroid/app/Service;
.source "TTWAppService.java"


# static fields
.field private static actx:Landroid/content/Context;

.field public static agentid:Ljava/lang/String;

.field public static appid:Ljava/lang/String;

.field public static badge:I

.field public static channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/PayWay;",
            ">;"
        }
    .end annotation
.end field

.field public static code:I

.field public static debug:I

.field public static dm:Lcom/game/sdk/domain/DeviceMsg;

.field public static gameid:Ljava/lang/String;

.field public static gttb:Ljava/lang/String;

.field public static isLogin:Z

.field public static isgift:I

.field public static logo:Ljava/lang/String;

.field public static logpBitmap:Landroid/graphics/Bitmap;

.field public static notice:Ljava/lang/String;

.field public static ptbkey:Ljava/lang/String;

.field public static publicKey:Ljava/lang/String;

.field public static service_qq:Ljava/lang/String;

.field public static service_tel:Ljava/lang/String;

.field public static tips:Ljava/lang/String;

.field public static ttb:Ljava/lang/String;

.field public static ttbrate:I

.field public static userinfo:Lcom/game/sdk/domain/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/game/sdk/TTWAppService;->isLogin:Z

    .line 41
    sput v1, Lcom/game/sdk/TTWAppService;->isgift:I

    .line 46
    sput v1, Lcom/game/sdk/TTWAppService;->debug:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private handCommand()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 76
    new-instance v1, Landroid/app/Notification;

    const-string v2, ""

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 76
    invoke-direct {v1, v6, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 79
    .local v1, "notification":Landroid/app/Notification;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 78
    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 80
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 81
    invoke-virtual {p0, v6, v1}, Lcom/game/sdk/TTWAppService;->startForeground(ILandroid/app/Notification;)V

    .line 82
    return-void
.end method

.method public static isServiceRunning(Landroid/content/Context;)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 91
    .line 92
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    check-cast v0, Landroid/app/ActivityManager;

    .line 94
    .local v0, "am":Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 95
    .local v2, "runServices":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 104
    :goto_0
    return v3

    .line 98
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    move v3, v4

    .line 104
    goto :goto_0

    .line 99
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 100
    const-class v5, Lcom/game/sdk/TTWAppService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    const/4 v3, 0x1

    goto :goto_0

    .line 98
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static startService(Landroid/content/Context;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/game/sdk/TTWAppService;->isServiceRunning(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    sput-object p0, Lcom/game/sdk/TTWAppService;->actx:Landroid/content/Context;

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/TTWAppService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent_service":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    .end local v0    # "intent_service":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 64
    const-string v1, ""

    .line 66
    .local v1, "succ":Ljava/lang/String;
    :try_start_0
    const-string v2, "login_success"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    :goto_0
    invoke-direct {p0}, Lcom/game/sdk/TTWAppService;->handCommand()V

    .line 72
    const/4 v2, 0x1

    return v2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method
