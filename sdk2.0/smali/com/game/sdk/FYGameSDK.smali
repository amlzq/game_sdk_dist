.class public Lcom/game/sdk/FYGameSDK;
.super Ljava/lang/Object;
.source "FYGameSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/game/sdk/FYGameSDK$InitCloseListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/game/sdk/FYGameSDK;


# instance fields
.field private acontext:Landroid/app/Activity;

.field private alogout:Ljava/lang/Runnable;

.field private closeListener:Lcom/game/sdk/FYGameSDK$InitCloseListener;

.field initCallback:Lcom/game/sdk/OnSDKInitListener;

.field private initMsg:Ljava/lang/String;

.field private isInitOk:Z

.field private isOpenLogout:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "\u6b63\u5728\u521d\u59cb\u5316"

    iput-object v0, p0, Lcom/game/sdk/FYGameSDK;->initMsg:Ljava/lang/String;

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/FYGameSDK;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/game/sdk/FYGameSDK;->preInit()V

    return-void
.end method

.method static synthetic access$1(Lcom/game/sdk/FYGameSDK;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/FYGameSDK;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/game/sdk/FYGameSDK;->isInitOk:Z

    return-void
.end method

.method static synthetic access$3(Lcom/game/sdk/FYGameSDK;)Lcom/game/sdk/FYGameSDK$InitCloseListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->closeListener:Lcom/game/sdk/FYGameSDK$InitCloseListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/game/sdk/FYGameSDK;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isInitOk:Z

    return v0
.end method

.method public static defaultSDK()Lcom/game/sdk/FYGameSDK;
    .locals 2

    .prologue
    .line 203
    sget-object v0, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/game/sdk/FYGameSDK;

    invoke-direct {v0}, Lcom/game/sdk/FYGameSDK;-><init>()V

    sput-object v0, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    .line 205
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

    .line 207
    :cond_0
    sget-object v0, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    return-object v0
.end method

.method private getUserInfoByUserName(Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 309
    .local v0, "userInfo":Lcom/game/sdk/domain/UserInfo;
    return-object v0
.end method

.method private preInit()V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/game/sdk/utils/CrashHandler;->getInstance()Lcom/game/sdk/utils/CrashHandler;

    move-result-object v0

    .line 71
    .local v0, "crashHandler":Lcom/game/sdk/utils/CrashHandler;
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/game/sdk/utils/CrashHandler;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/game/sdk/domain/GoagalInfo;->imei:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/SystemUtil;->getUpValidateCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/game/sdk/domain/GoagalInfo;->validateCode:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/utils/Util;->getGameInfo(Landroid/content/Context;)V

    .line 76
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/game/sdk/net/impls/OKHttpRequest;->initPicasso(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method private recycle()V
    .locals 2

    .prologue
    .line 491
    const-string v0, "\u56de\u6536\u8d44\u6e90"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 492
    sget-object v0, Lcom/game/sdk/TTWAppService;->userinfo:Lcom/game/sdk/domain/UserInfo;

    if-eqz v0, :cond_0

    .line 493
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/FYGameSDK$3;

    invoke-direct {v1, p0}, Lcom/game/sdk/FYGameSDK$3;-><init>(Lcom/game/sdk/FYGameSDK;)V

    invoke-virtual {v0, v1}, Lcom/game/sdk/utils/ThreadPoolManager;->addTask(Ljava/lang/Runnable;)V

    .line 502
    :cond_0
    invoke-virtual {p0}, Lcom/game/sdk/FYGameSDK;->removeFloatButton()V

    .line 505
    return-void
.end method

.method private reinit(Lcom/game/sdk/OnSDKInitListener;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V
    .locals 7
    .param p1, "initCallback"    # Lcom/game/sdk/OnSDKInitListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isShowQuikLogin"    # Z
    .param p4, "loginlistener"    # Lcom/game/sdk/domain/OnLoginListener;

    .prologue
    .line 129
    new-instance v2, Lcom/game/sdk/view/CustomDialog;

    const-string v0, "\u6b63\u5728\u91cd\u65b0\u521d\u59cb\u5316"

    invoke-direct {v2, p2, v0}, Lcom/game/sdk/view/CustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    .local v2, "reinitDialog":Lcom/game/sdk/view/CustomDialog;
    invoke-virtual {v2}, Lcom/game/sdk/view/CustomDialog;->show()V

    .line 132
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager;

    move-result-object v6

    new-instance v0, Lcom/game/sdk/FYGameSDK$2;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/game/sdk/FYGameSDK$2;-><init>(Lcom/game/sdk/FYGameSDK;Lcom/game/sdk/view/CustomDialog;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V

    invoke-virtual {v6, v0}, Lcom/game/sdk/utils/ThreadPoolManager;->addTask(Ljava/lang/Runnable;)V

    .line 162
    return-void
.end method


# virtual methods
.method public createFloatButton()V
    .locals 1

    .prologue
    .line 469
    sget-boolean v0, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    const-string v0, "\u60ac\u6d6e\u6309\u94ae\u542f\u52a8"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->getInstance(Landroid/content/Context;)Lcom/game/sdk/floatwindow/FloatViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->ShowFloat()V

    goto :goto_0
.end method

.method public exitSDK()V
    .locals 3

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/game/sdk/FYGameSDK;->recycle()V

    .line 447
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-class v2, Lcom/game/sdk/ui/LoginoutActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 450
    return-void
.end method

.method public getLastUserInfo(I)Lcom/game/sdk/domain/UserInfo;
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v6, 0x0

    .line 313
    const/4 v1, 0x0

    .line 315
    .local v1, "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/domain/UserInfo;>;"
    iget-object v5, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v5}, Lcom/game/sdk/utils/GameBox2SDKUtil;->loadAllUserInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 318
    .local v4, "users":Ljava/util/List;, "Ljava/util/List<Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 327
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 328
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    check-cast v1, Lcom/game/sdk/domain/UserInfo;

    .line 332
    .restart local v1    # "lastUserInfo":Lcom/game/sdk/domain/UserInfo;
    :goto_1
    return-object v1

    .line 319
    :cond_0
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget v5, v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->type:I

    if-ne v5, p1, :cond_1

    .line 320
    new-instance v3, Lcom/game/sdk/domain/UserInfo;

    invoke-direct {v3}, Lcom/game/sdk/domain/UserInfo;-><init>()V

    .line 321
    .local v3, "temp":Lcom/game/sdk/domain/UserInfo;
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget-object v5, v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->name:Ljava/lang/String;

    iput-object v5, v3, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    .line 322
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;

    iget-object v5, v5, Lcom/game/sdk/utils/GameBox2SDKUtil$UserInfo;->pwd:Ljava/lang/String;

    iput-object v5, v3, Lcom/game/sdk/domain/UserInfo;->password:Ljava/lang/String;

    .line 323
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v3    # "temp":Lcom/game/sdk/domain/UserInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_2
    iget-object v5, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v5}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getInstance(Landroid/content/Context;)Lcom/game/sdk/db/impl/UserLoginInfodao;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/game/sdk/db/impl/UserLoginInfodao;->getUserInfoLastByType(I)Lcom/game/sdk/domain/UserInfo;

    move-result-object v1

    goto :goto_1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 513
    const-string v0, "2.0"

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/game/sdk/utils/ThreadPoolManager;->getInstance()Lcom/game/sdk/utils/ThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/game/sdk/FYGameSDK$1;

    invoke-direct {v1, p0}, Lcom/game/sdk/FYGameSDK$1;-><init>(Lcom/game/sdk/FYGameSDK;)V

    invoke-virtual {v0, v1}, Lcom/game/sdk/utils/ThreadPoolManager;->addTask(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method public initSDK(Landroid/app/Activity;Lcom/game/sdk/OnSDKInitListener;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "initCallback"    # Lcom/game/sdk/OnSDKInitListener;
    .param p3, "logoutCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    .line 190
    iput-object p3, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    .line 192
    iput-object p2, p0, Lcom/game/sdk/FYGameSDK;->initCallback:Lcom/game/sdk/OnSDKInitListener;

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/game/sdk/ui/InitActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 195
    return-void
.end method

.method public initSDK(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "logoutCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    .line 174
    iput-object p2, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    .line 175
    invoke-virtual {p0}, Lcom/game/sdk/FYGameSDK;->init()V

    .line 176
    return-void
.end method

.method public isInitOk()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isInitOk:Z

    return v0
.end method

.method public isOpenLogout()Z
    .locals 1

    .prologue
    .line 533
    iget-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isOpenLogout:Z

    return v0
.end method

.method public login(Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isShowQuikLogin"    # Z
    .param p3, "loginlistener"    # Lcom/game/sdk/domain/OnLoginListener;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 222
    sget-boolean v4, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-eqz v4, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/game/sdk/FYGameSDK;->recycle()V

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/game/sdk/FYGameSDK;->isInitOk()Z

    move-result v4

    if-nez v4, :cond_1

    .line 227
    const-string v4, "\u91cd\u65b0\u521d\u59cb\u5316..."

    iput-object v4, p0, Lcom/game/sdk/FYGameSDK;->initMsg:Ljava/lang/String;

    .line 228
    const/4 v4, 0x0

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/game/sdk/FYGameSDK;->reinit(Lcom/game/sdk/OnSDKInitListener;Landroid/content/Context;ZLcom/game/sdk/domain/OnLoginListener;)V

    .line 287
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-static {p1}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 233
    iget-object v4, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v5, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v4, v5}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_2
    invoke-static {p1}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v4

    invoke-static {p1}, Lcom/game/sdk/utils/SystemUtil;->getPhoneIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/game/sdk/utils/PreferenceUtil;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    .line 239
    const/4 v3, 0x0

    .line 240
    .local v3, "type":I
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    if-le v4, v7, :cond_3

    .line 241
    const/4 v3, 0x1

    .line 244
    :cond_3
    invoke-virtual {p0, v3}, Lcom/game/sdk/FYGameSDK;->getLastUserInfo(I)Lcom/game/sdk/domain/UserInfo;

    move-result-object v0

    .line 246
    .local v0, "currentUserInfo":Lcom/game/sdk/domain/UserInfo;
    if-eqz v0, :cond_4

    .line 247
    iget-object v4, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    iget-object v5, v0, Lcom/game/sdk/domain/UserInfo;->username:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/game/sdk/utils/AccountInfoUtil;->getUserInfoByName(Landroid/content/Context;Ljava/lang/String;)Lcom/game/sdk/domain/UserInfo;

    move-result-object v4

    sput-object v4, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    .line 251
    :cond_4
    sput-object p3, Lcom/game/sdk/domain/GoagalInfo;->loginlistener:Lcom/game/sdk/domain/OnLoginListener;

    .line 253
    iget-object v4, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v4}, Lcom/game/sdk/utils/PreferenceUtil;->getImpl(Landroid/content/Context;)Lcom/game/sdk/utils/PreferenceUtil;

    move-result-object v4

    const-string v5, "is_auto_login"

    invoke-virtual {v4, v5, v6}, Lcom/game/sdk/utils/PreferenceUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 268
    .local v1, "isAutoLogin":Z
    const/4 v2, 0x0

    .line 270
    .local v2, "login_int":Landroid/content/Intent;
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    if-nez v4, :cond_5

    .line 271
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "login_int":Landroid/content/Intent;
    const-class v4, Lcom/game/sdk/ui/QuickLoginActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .restart local v2    # "login_int":Landroid/content/Intent;
    const/4 v4, 0x1

    sput v4, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 284
    :goto_1
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    :cond_5
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    if-ne v4, v7, :cond_6

    .line 274
    sput v6, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 275
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "login_int":Landroid/content/Intent;
    const-class v4, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 276
    .restart local v2    # "login_int":Landroid/content/Intent;
    goto :goto_1

    :cond_6
    sget v4, Lcom/game/sdk/domain/GoagalInfo;->loginType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    .line 277
    sput v6, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 278
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "login_int":Landroid/content/Intent;
    const-class v4, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .restart local v2    # "login_int":Landroid/content/Intent;
    goto :goto_1

    .line 280
    :cond_7
    sput v6, Lcom/game/sdk/domain/GoagalInfo;->isQuick:I

    .line 281
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "login_int":Landroid/content/Intent;
    const-class v4, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v2    # "login_int":Landroid/content/Intent;
    goto :goto_1
.end method

.method public openLogout()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->alogout:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/game/sdk/FYGameSDK;->isOpenLogout:Z

    .line 525
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
    .line 409
    invoke-static {p1}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v3, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 440
    :goto_0
    return-void

    .line 414
    :cond_0
    sget-boolean v2, Lcom/game/sdk/domain/GoagalInfo;->isLogin:Z

    if-nez v2, :cond_1

    .line 415
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v3, "\u8bf7\u5148\u767b\u5f55"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    :cond_1
    if-eqz p3, :cond_2

    const-string v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p3}, Lorg/apache/commons/lang/math/NumberUtils;->isNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 420
    :cond_2
    iget-object v2, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v3, "\u8bf7\u8f93\u5165\u91d1\u989d\uff0c\u91d1\u989d\u4e3a\u6570\u5b57"

    invoke-static {v2, v3}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_3
    sput-object p8, Lcom/game/sdk/domain/GoagalInfo;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    .line 426
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 428
    .local v0, "moneys":F
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/game/sdk/ui/PayActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 429
    .local v1, "pay_int":Landroid/content/Intent;
    sput-object p8, Lcom/game/sdk/ui/PayActivity;->paymentListener:Lcom/game/sdk/domain/OnPaymentListener;

    .line 430
    const-string v2, "roleid"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 431
    const-string v2, "money"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 432
    const-string v2, "serverid"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v2, "productname"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v2, "productdesc"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v2, "fcallbackurl"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v2, "attach"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 438
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 439
    sget-object v2, Lcom/game/sdk/FYGameSDK;->instance:Lcom/game/sdk/FYGameSDK;

    invoke-virtual {v2}, Lcom/game/sdk/FYGameSDK;->removeFloatButton()V

    goto :goto_0
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/game/sdk/domain/OnPaymentListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "roleid"    # Ljava/lang/String;
    .param p3, "money"    # Ljava/lang/String;
    .param p4, "serverid"    # Ljava/lang/String;
    .param p5, "productname"    # Ljava/lang/String;
    .param p6, "productdesc"    # Ljava/lang/String;
    .param p7, "fcallbackurl"    # Ljava/lang/String;
    .param p8, "attach"    # Ljava/lang/String;
    .param p9, "paymentListener"    # Lcom/game/sdk/domain/OnPaymentListener;

    .prologue
    .line 359
    invoke-static {p1}, Lcom/game/sdk/utils/NetworkImpl;->isNetWorkConneted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v2, "\u7f51\u7edc\u4e0d\u7ed9\u529b\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u8bbe\u7f6e"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 385
    :goto_0
    return-void

    .line 363
    :cond_0
    sget-boolean v1, Lcom/game/sdk/TTWAppService;->isLogin:Z

    if-nez v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v2, "\u8bf7\u5148\u767b\u5f55"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_1
    if-eqz p3, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Lorg/apache/commons/lang/math/NumberUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 368
    :cond_2
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-string v2, "\u8bf7\u8f93\u5165\u91d1\u989d\uff0c\u91d1\u989d\u4e3a\u6570\u5b57"

    invoke-static {v1, v2}, Lcom/game/sdk/utils/Util;->toast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :cond_3
    invoke-static {p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 385
    .local v0, "moneys":F
    goto :goto_0
.end method

.method public removeFloatButton()V
    .locals 1

    .prologue
    .line 481
    const-string v0, "\u79fb\u9664\u60ac\u6d6e\u6309\u94ae"

    invoke-static {v0}, Lcom/game/sdk/utils/Logger;->msg(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->getInstance(Landroid/content/Context;)Lcom/game/sdk/floatwindow/FloatViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/game/sdk/floatwindow/FloatViewImpl;->removeFloat()V

    .line 484
    return-void
.end method

.method public setCloseListener(Lcom/game/sdk/FYGameSDK$InitCloseListener;)V
    .locals 0
    .param p1, "closeListener"    # Lcom/game/sdk/FYGameSDK$InitCloseListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/game/sdk/FYGameSDK;->closeListener:Lcom/game/sdk/FYGameSDK$InitCloseListener;

    .line 60
    return-void
.end method

.method public switchUser()V
    .locals 3

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/game/sdk/FYGameSDK;->recycle()V

    .line 460
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    const-class v2, Lcom/game/sdk/ui/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 462
    iget-object v1, p0, Lcom/game/sdk/FYGameSDK;->acontext:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 463
    return-void
.end method
