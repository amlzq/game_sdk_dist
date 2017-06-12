.class public Lcom/game/sdk/FYGameSDK;
.super Ljava/lang/Object;
.source "FYGameSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/FYGameSDK$InitCloseListener;,
        Lcom/game/sdk/FYGameSDK$LoginTask;
    }
.end annotation


# static fields
.field private static instance:Lcom/game/sdk/FYGameSDK;


# instance fields
.field private acontext:Landroid/app/Activity;

.field private alogout:Ljava/lang/Runnable;

.field private autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

.field private closeListener:Lcom/game/sdk/FYGameSDK$InitCloseListener;

.field handler:Landroid/os/Handler;

.field initCallback:Lcom/game/sdk/OnSDKInitListener;

.field private initMsg:Ljava/lang/String;

.field private isInitOk:Z

.field private isOpenLogout:Z

.field private switchCallBack:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isOpenLogout:Z

    .line 70
    const-string v0, "\u6b63\u5728\u521d\u59cb\u5316"

    iput-object v0, p0, Lcom/game/sdk/FYGameSDK;->initMsg:Ljava/lang/String;

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/FYGameSDK;->handler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/FYGameSDK;)Lcom/game/sdk/view/LoginInDialog;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/FYGameSDK;)Lcom/game/sdk/FYGameSDK$InitCloseListener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->closeListener:Lcom/game/sdk/FYGameSDK$InitCloseListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/FYGameSDK;Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/game/sdk/FYGameSDK;->isInitOk:Z

    return-void
.end method

.method static synthetic access$4(Lcom/game/sdk/FYGameSDK;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isInitOk:Z

    return v0
.end method

.method public static defaultSDK()Lcom/game/sdk/FYGameSDK;
    .locals 2

    .prologue
    .line 277
    sget-object v0, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/game/sdk/FYGameSDK;

    invoke-direct {v0}, Lcom/game/sdk/FYGameSDK;-><init>()V

    sput-object v0, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "6071GameSDK\u7248\u672c\u53f7\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v1}, Lcom/game/sdk/FYGameSDK;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6b63\u5f0f\u7248"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 281
    :cond_0
    sget-object v0, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    return-object v0
.end method

.method private getUserInfoByUserName(Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 504
    .local v0, "userInfo":Lcom/game/sdk/domain/UserInfo;
    return-object v0
.end method

.method private pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/domain/OnPaymentListener;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roleid"    # Ljava/lang/String;
    .param p3, "money"    # Ljava/lang/String;
    .param p4, "serverid"    # Ljava/lang/String;
    .param p5, "productname"    # Ljava/lang/String;
    .param p6, "productdesc"    # Ljava/lang/String;
    .param p7, "fcallbackurl"    # Ljava/lang/String;
    .param p8, "attach"    # Ljava/lang/String;
    .param p9, "paymentListener"    # Lcom/game/sdk/domain/OnPaymentListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 582
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/game/sdk/FYGameSDK;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/domain/OnPaymentListener;)V

    .line 583
    return-void
.end method

.method private preInit()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 97
    const-string v1, "preInit -----"

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 99
    sput-boolean v8, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 100
    const/4 v1, 0x0

    sput-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 102
    invoke-static {}, Lcom/game/sdk/utils/CrashHandler;->getInstance()Lcom/game/sdk/utils/CrashHandler;

    move-result-object v7

    .line 103
    .local v7, "crashHandler":Lcom/game/sdk/utils/CrashHandler;
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v2, ""

    invoke-virtual {v7, v1, v2}, Lcom/game/sdk/utils/CrashHandler;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/game/sdk/domain/GoagalInfo;->imei:Ljava/lang/String;

    .line 106
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/SystemUtil;->getUpValidateCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/Util;->getGameInfo(Landroid/content/Context;)V

    .line 109
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/net/impls/OKHttpRequest;->initPicasso(Landroid/content/Context;)V

    .line 115
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/SystemUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/SystemUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "appName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appName--->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v2, "5879b43ca325113edf0010f8"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/game/sdk/domain/GoagalInfo;->agentid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 121
    sget-object v4, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    const/4 v5, 0x1

    .line 120
    invoke-direct/range {v0 .. v5}, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/analytics/MobclickAgent$EScenarioType;Z)V

    .line 122
    .local v0, "umConfig":Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;
    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->startWithConfigure(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V

    .line 123
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    sget-object v2, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->E_UM_NORMAL:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->setScenarioType(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 124
    invoke-static {v8}, Lcom/umeng/analytics/MobclickAgent;->openActivityDurationTrack(Z)V

    .line 125
    return-void

    .line 115
    .end local v0    # "umConfig":Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;
    .end local v6    # "appName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/domain/GoagalInfo;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private reinit(Lcom/game/sdk/OnSDKInitListener;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V
    .locals 7
    .param p1, "initCallback"    # Lcom/game/sdk/OnSDKInitListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isShowQuikLogin"    # Z
    .param p4, "loginlistener"    # Lcom/game/sdk/domain/OnLoginListener;

    .prologue
    .line 174
    new-instance v2, Lcom/game/sdk/view/CustomDialog;

    const-string v0, "\u91cd\u65b0\u521d\u59cb\u5316"

    invoke-direct {v2, p2, v0}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    .local v2, "reinitDialog":Lcom/game/sdk/view/CustomDialog;
    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 177
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    move-result-object v6

    new-instance v0, Lcom/game/sdk/FYGameSDK$2;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/game/sdk/FYGameSDK$2;-><init>(Lcom/game/sdk/FYGameSDK;Lcom/game/sdk/view/CustomDialog;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V

    invoke-virtual {v6, v0}, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->addTask(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method


# virtual methods
.method public createFloatButton()V
    .locals 1

    .prologue
    .line 670
    sget-boolean v0, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-nez v0, :cond_0

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    const-string v0, "\u60ac\u6d6e\u6309\u94ae\u542f\u52a8"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->getInstance(Landroid/content/Context;)Lcom/game/sdk/floatwindow/FloatViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->ShowFloat()V

    goto :goto_0
.end method

.method public exitSDK()V
    .locals 3

    .prologue
    .line 647
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-class v2, Lcom/game/sdk/ui/LoginoutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 648
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 649
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 650
    return-void
.end method

.method public getLastUserInfo()Lcom/game/sdk/domain/UserInfo;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 508
    const/4 v4, 0x0

    .line 510
    .local v4, "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/game/sdk/utils/AccountInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 512
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    if-nez v7, :cond_0

    .line 513
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    :cond_0
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v8

    const-string v9, "is_read_last_version"

    invoke-virtual {v8, v9, v11}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 518
    .local v2, "isRead":Z
    if-nez v2, :cond_2

    .line 519
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/game/sdk/utils/MobileInfoUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 520
    .local v5, "lastVersionPhoneList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 521
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 522
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lt v1, v8, :cond_3

    .line 541
    .end local v1    # "i":I
    :cond_1
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v8

    const-string v9, "is_read_last_version"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 545
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v8

    sget-object v9, Lcom/game/sdk/net/constans/ServerConfig;->MAIN_MODULE_URL:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lcom/game/sdk/utils/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    .end local v5    # "lastVersionPhoneList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    :cond_2
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 549
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    check-cast v4, Lcom/game/sdk/domain/UserInfo;

    .line 554
    .restart local v4    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    :goto_1
    return-object v4

    .line 523
    .restart local v1    # "i":I
    .restart local v5    # "lastVersionPhoneList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    :cond_3
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 524
    .local v0, "_userInfo":Lcom/game/sdk/domain/UserInfo;
    invoke-interface {v7, v11, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 525
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8, v0}, Lcom/game/sdk/utils/AccountInfoUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 522
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v0    # "_userInfo":Lcom/game/sdk/domain/UserInfo;
    .end local v1    # "i":I
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 529
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/domain/UserInfo;

    .line 531
    .restart local v0    # "_userInfo":Lcom/game/sdk/domain/UserInfo;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 532
    .local v6, "len":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-lt v3, v6, :cond_5

    .line 528
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 533
    :cond_5
    iget-object v9, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/game/sdk/domain/UserInfo;

    iget-object v8, v8, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 534
    invoke-interface {v7, v11, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 535
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8, v0}, Lcom/game/sdk/utils/AccountInfoUtil;->insertUserInfo(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V

    .line 532
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 551
    .end local v0    # "_userInfo":Lcom/game/sdk/domain/UserInfo;
    .end local v1    # "i":I
    .end local v3    # "j":I
    .end local v5    # "lastVersionPhoneList":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    .end local v6    # "len":I
    :cond_7
    iget-object v8, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v8

    invoke-virtual {v8}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getUserInfoLastByType()Lcom/game/sdk/domain/UserInfo;

    move-result-object v4

    goto :goto_1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    const-string v0, "2.2.15"

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/FYGameSDK$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/FYGameSDK$1;-><init>(Lcom/game/sdk/FYGameSDK;)V

    invoke-virtual {v0, v1}, Lcom/game/sdk/utils/ThreadPoolManager$ThreadPollProxy;->addTask(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public initSDK(Landroid/app/Activity;Lcom/game/sdk/OnSDKInitListener;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "initCallback"    # Lcom/game/sdk/OnSDKInitListener;
    .param p3, "logoutCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/game/sdk/FYGameSDK;->initSDK(Landroid/app/Activity;Lcom/game/sdk/OnSDKInitListener;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public initSDK(Landroid/app/Activity;Lcom/game/sdk/OnSDKInitListener;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "initCallback"    # Lcom/game/sdk/OnSDKInitListener;
    .param p3, "switchAccountCallback"    # Ljava/lang/Runnable;
    .param p4, "logoutCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    .line 253
    iput-object p3, p0, Lcom/game/sdk/FYGameSDK;->switchCallBack:Ljava/lang/Runnable;

    .line 254
    iput-object p4, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    .line 255
    sput-object p1, Lcom/game/sdk/domain/GoagalInfo;->initActivity:Landroid/app/Activity;

    .line 256
    sput-object p4, Lcom/game/sdk/domain/GoagalInfo;->loginoutRunnable:Ljava/lang/Runnable;

    .line 257
    iput-object p2, p0, Lcom/game/sdk/FYGameSDK;->initCallback:Lcom/game/sdk/OnSDKInitListener;

    .line 260
    invoke-direct {p0}, Lcom/game/sdk/FYGameSDK;->preInit()V

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/ui/InitActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 267
    const-string v1, "anim"

    const-string v2, "fysdk_init_enter"

    invoke-static {p1, v1, v2}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "anim"

    const-string v3, "fysdk_init_exit"

    invoke-static {p1, v2, v3}, Lcom/game/sdk/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 268
    return-void
.end method

.method public initSDK(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "logoutCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    .line 221
    iput-object p2, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    .line 222
    invoke-virtual {p0}, Lcom/game/sdk/FYGameSDK;->init()V

    .line 223
    return-void
.end method

.method public isInitOk()Z
    .locals 1

    .prologue
    .line 746
    iget-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isInitOk:Z

    return v0
.end method

.method public isOpenLogout()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isOpenLogout:Z

    return v0
.end method

.method public login(Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isShowQuikLogin"    # Z
    .param p3, "loginlistener"    # Lcom/game/sdk/domain/OnLoginListener;

    .prologue
    .line 296
    sget-boolean v13, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-eqz v13, :cond_0

    .line 412
    :goto_0
    return-void

    .line 302
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/game/sdk/FYGameSDK;->isInitOk()Z

    move-result v13

    if-nez v13, :cond_1

    .line 303
    const-string v13, "\u91cd\u65b0\u521d\u59cb\u5316..."

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/game/sdk/FYGameSDK;->initMsg:Ljava/lang/String;

    .line 304
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/game/sdk/FYGameSDK;->reinit(Lcom/game/sdk/OnSDKInitListener;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V

    goto :goto_0

    .line 308
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v14, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v13, v14}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v13

    const-string v14, "is_first_account"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 315
    .local v9, "isFirst":Z
    if-eqz v9, :cond_4

    .line 317
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 318
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    const-string v13, "content://com.sdk.rpc.provide/gamesdk"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 320
    .local v11, "uri":Landroid/net/Uri;
    const-string v13, "search_login"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v11, v13, v14, v15}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 321
    .local v7, "gameBoxBundle":Landroid/os/Bundle;
    if-eqz v7, :cond_3

    .line 323
    new-instance v13, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v13}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    sput-object v13, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 325
    const-string v13, "phone"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "phone"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 327
    .local v12, "userName":Ljava/lang/String;
    :goto_1
    invoke-static {v12}, Lcom/game/sdk/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 328
    sget-object v13, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iput-object v12, v13, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 329
    sget-object v13, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    const-string v14, "password"

    invoke-virtual {v7, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 330
    sget-object v13, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    const/4 v14, 0x0

    iput v14, v13, Lcom/game/sdk/domain/UserInfo;->accountType:I

    .line 331
    const/4 v13, 0x2

    sput v13, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 333
    sget-object v13, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/game/sdk/utils/AccountInfoUtil;->insertUserInfoFromPublic(Landroid/content/Context;Lcom/game/sdk/domain/UserInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v7    # "gameBoxBundle":Landroid/os/Bundle;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "userName":Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v13

    const-string v14, "is_first_account"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/game/sdk/utils/PreferenceUtil;->putBoolean(Ljava/lang/String;Z)V

    .line 350
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/game/sdk/utils/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v13

    sput v13, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/game/sdk/FYGameSDK;->getLastUserInfo()Lcom/game/sdk/domain/UserInfo;

    move-result-object v5

    .line 353
    .local v5, "currentUserInfo":Lcom/game/sdk/domain/UserInfo;
    if-eqz v5, :cond_5

    .line 354
    sput-object v5, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 355
    const/4 v13, 0x2

    sput v13, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 360
    :cond_5
    sput-object p3, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    .line 362
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v13}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v13

    const-string v14, "is_auto_login"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 364
    .local v8, "isAutoLogin":Z
    sget-object v13, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v13, :cond_8

    if-eqz v8, :cond_8

    .line 365
    const/4 v13, 0x0

    sput-boolean v13, Lcom/game/sdk/domain/GoagalInfo;->isChangeAccount:Z

    .line 366
    new-instance v13, Lcom/game/sdk/view/LoginInDialog;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    sget-object v15, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v15, v15, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Lcom/game/sdk/view/LoginInDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/game/sdk/FYGameSDK;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    .line 367
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/game/sdk/FYGameSDK;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/game/sdk/view/LoginInDialog;->setCanceledOnTouchOutside(Z)V

    .line 368
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/game/sdk/FYGameSDK;->autoLoginDialog:Lcom/game/sdk/view/LoginInDialog;

    invoke-virtual {v13}, Lcom/game/sdk/view/LoginInDialog;->show()V

    .line 370
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/game/sdk/FYGameSDK;->handler:Landroid/os/Handler;

    new-instance v14, Lcom/game/sdk/FYGameSDK$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/game/sdk/FYGameSDK$3;-><init>(Lcom/game/sdk/FYGameSDK;)V

    .line 376
    const-wide/16 v16, 0x7d0

    .line 370
    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 325
    .end local v5    # "currentUserInfo":Lcom/game/sdk/domain/UserInfo;
    .end local v8    # "isAutoLogin":Z
    .restart local v4    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v7    # "gameBoxBundle":Landroid/os/Bundle;
    .restart local v11    # "uri":Landroid/net/Uri;
    :cond_6
    :try_start_1
    const-string v13, "username"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 336
    .restart local v12    # "userName":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    sput-object v13, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 340
    .end local v4    # "contentResolver":Landroid/content/ContentResolver;
    .end local v7    # "gameBoxBundle":Landroid/os/Bundle;
    .end local v11    # "uri":Landroid/net/Uri;
    .end local v12    # "userName":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 341
    .local v6, "e":Ljava/lang/Exception;
    const-string v13, "ContentResolver error--->"

    invoke-static {v13}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 379
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "currentUserInfo":Lcom/game/sdk/domain/UserInfo;
    .restart local v8    # "isAutoLogin":Z
    :cond_8
    const/4 v10, 0x0

    .line 381
    .local v10, "login_int":Landroid/content/Intent;
    sget v13, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    if-nez v13, :cond_9

    .line 382
    invoke-static {}, Lcom/game/sdk/utils/EmulatorCheckUtil;->isEmulator()Z

    move-result v13

    sput-boolean v13, Lcom/game/sdk/domain/GoagalInfo;->isEmulator:Z

    .line 383
    sget-boolean v13, Lcom/game/sdk/domain/GoagalInfo;->isEmulator:Z

    if-eqz v13, :cond_b

    .line 384
    const/4 v13, 0x0

    sput v13, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 385
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "login_int":Landroid/content/Intent;
    const-class v13, Lcom/game/sdk/ui/LoginActivity;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .restart local v10    # "login_int":Landroid/content/Intent;
    :cond_9
    :goto_3
    sget v13, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_a

    .line 405
    const/4 v13, 0x0

    sput v13, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 406
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "login_int":Landroid/content/Intent;
    const-class v13, Lcom/game/sdk/ui/LoginActivity;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    .restart local v10    # "login_int":Landroid/content/Intent;
    :cond_a
    const/high16 v13, 0x10000000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 410
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 388
    :cond_b
    sget-object v13, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v13, :cond_c

    .line 389
    const/4 v13, 0x0

    sput v13, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 390
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "login_int":Landroid/content/Intent;
    const-class v13, Lcom/game/sdk/ui/LoginActivity;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .restart local v10    # "login_int":Landroid/content/Intent;
    goto :goto_3

    .line 393
    :cond_c
    sget-object v13, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    if-eqz v13, :cond_d

    sget-object v13, Lcom/game/sdk/domain/GoagalInfo;->inItInfo:Lcom/game/sdk/domain/InItInfo;

    iget v13, v13, Lcom/game/sdk/domain/InItInfo;->isMqr:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 394
    const/4 v13, 0x1

    sput v13, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 395
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "login_int":Landroid/content/Intent;
    const-class v13, Lcom/game/sdk/ui/QuickLoginActivity;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 396
    .restart local v10    # "login_int":Landroid/content/Intent;
    goto :goto_3

    .line 397
    :cond_d
    const/4 v13, 0x0

    sput v13, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 398
    new-instance v10, Landroid/content/Intent;

    .end local v10    # "login_int":Landroid/content/Intent;
    const-class v13, Lcom/game/sdk/ui/LoginActivity;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v10    # "login_int":Landroid/content/Intent;
    goto :goto_3
.end method

.method public loginSuccess()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 471
    new-instance v0, Lcom/game/sdk/domain/LogincallBack;

    invoke-direct {v0}, Lcom/game/sdk/domain/LogincallBack;-><init>()V

    .line 472
    .local v0, "logincallBack":Lcom/game/sdk/domain/LogincallBack;
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    iput-object v2, v0, Lcom/game/sdk/domain/LogincallBack;->username:Ljava/lang/String;

    .line 473
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    iput-object v2, v0, Lcom/game/sdk/domain/LogincallBack;->userId:Ljava/lang/String;

    .line 474
    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget v2, v2, Lcom/game/sdk/domain/UserInfo;->validateMobile:I

    if-ne v2, v1, :cond_0

    :goto_0
    iput-boolean v1, v0, Lcom/game/sdk/domain/LogincallBack;->isBindPhone:Z

    .line 475
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-wide v2, v1, Lcom/game/sdk/domain/UserInfo;->logintime:J

    iput-wide v2, v0, Lcom/game/sdk/domain/LogincallBack;->logintime:J

    .line 476
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v1, v1, Lcom/game/sdk/domain/UserInfo;->sign:Ljava/lang/String;

    iput-object v1, v0, Lcom/game/sdk/domain/LogincallBack;->sign:Ljava/lang/String;

    .line 478
    sget-object v1, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    invoke-interface {v1, v0}, Lcom/game/sdk/domain/OnLoginListener;->loginSuccess(Lcom/game/sdk/domain/LogincallBack;)V

    .line 481
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    invoke-virtual {v1, v2, v3}, Lcom/game/sdk/utils/PreferenceUtil;->putInt(Ljava/lang/String;I)V

    .line 482
    return-void

    .line 474
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openLogout()V
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isOpenLogout:Z

    .line 729
    :cond_0
    return-void
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/domain/OnPaymentListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roleid"    # Ljava/lang/String;
    .param p3, "money"    # Ljava/lang/String;
    .param p4, "serverid"    # Ljava/lang/String;
    .param p5, "productname"    # Ljava/lang/String;
    .param p6, "productdesc"    # Ljava/lang/String;
    .param p7, "attach"    # Ljava/lang/String;
    .param p8, "paymentListener"    # Lcom/game/sdk/domain/OnPaymentListener;

    .prologue
    .line 607
    invoke-static {p1}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v3, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 638
    :goto_0
    return-void

    .line 612
    :cond_0
    sget-boolean v2, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-nez v2, :cond_1

    .line 613
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v3, "\u8bf7\u5148\u767b\u5f55"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    :cond_1
    if-eqz p3, :cond_2

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Lorg/apache/commons/lang/math/NumberUtils;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 618
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v3, "\u8bf7\u8f93\u5165\u91d1\u989d\uff0c\u91d1\u989d\u4e3a\u6570\u5b57"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_3
    sput-object p8, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    .line 624
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 626
    .local v0, "moneys":F
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/game/sdk/ui/PayActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 627
    .local v1, "pay_int":Landroid/content/Intent;
    sput-object p8, Lcom/game/sdk/ui/PayActivity;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    .line 628
    const-string v2, "roleid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v2, "money"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 630
    const-string v2, "serverid"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    const-string v2, "productname"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const-string v2, "productdesc"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string v2, "fcallbackurl"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    const-string v2, "attach"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 636
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 637
    sget-object v2, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v2}, Lcom/game/sdk/FYGameSDK;->removeFloatButton()V

    goto :goto_0
.end method

.method public recycle(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 695
    const-string v0, "\u56de\u6536\u8d44\u6e90"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->switchCallBack:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->switchCallBack:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 705
    :cond_1
    invoke-virtual {p0}, Lcom/game/sdk/FYGameSDK;->removeFloatButton()V

    .line 707
    const/4 v0, 0x0

    sput-object v0, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 708
    const/4 v0, 0x0

    sput-boolean v0, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    .line 709
    return-void
.end method

.method public removeFloatButton()V
    .locals 1

    .prologue
    .line 682
    const-string v0, "\u79fb\u9664\u60ac\u6d6e\u6309\u94ae"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->getInstance(Landroid/content/Context;)Lcom/game/sdk/floatwindow/FloatViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->removeFloat()V

    .line 685
    return-void
.end method

.method public setCloseListener(Lcom/game/sdk/FYGameSDK$InitCloseListener;)V
    .locals 0
    .param p1, "closeListener"    # Lcom/game/sdk/FYGameSDK$InitCloseListener;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK;->closeListener:Lcom/game/sdk/FYGameSDK$InitCloseListener;

    .line 86
    return-void
.end method

.method public setInitOk(Z)V
    .locals 0
    .param p1, "isInitOk"    # Z

    .prologue
    .line 750
    iput-boolean p1, p0, Lcom/game/sdk/FYGameSDK;->isInitOk:Z

    .line 751
    return-void
.end method

.method public switchUser()V
    .locals 3

    .prologue
    .line 656
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/game/sdk/FYGameSDK;->recycle(I)V

    .line 659
    invoke-virtual {p0}, Lcom/game/sdk/FYGameSDK;->isOpenLogout()Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-class v2, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 661
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 662
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 664
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
