.class public Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;
.super Landroid/app/Activity;


# static fields
.field private static final CAMERA_DATA:I = 0x0

.field public static final SMS_INBOX_URI:Ljava/lang/String; = "content://sms"

.field public static final SMS_URI:Ljava/lang/String; = "content://mms-sms/"

.field private static final VEDIO_DATA:I = 0x1


# instance fields
.field private application:Lcom/payeco/android/plugin/i;

.field private bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

.field private cameraBackId:Ljava/lang/String;

.field private configFile:Ljava/lang/String;

.field private htmlJson:Lorg/json/JSONObject;

.field public isDestroy:Z

.field private keyFile:Ljava/lang/String;

.field private keyMd5File:Ljava/lang/String;

.field private ll_web:Landroid/widget/LinearLayout;

.field loadDialog:Lcom/payeco/android/plugin/f/r;

.field public mCurrentPhotoFile:Ljava/lang/String;

.field public mLocationClient:Lcom/baidu/location/LocationClient;

.field public mMyLocationListener:Lcom/payeco/android/plugin/v;

.field private mSmsBroadCastReceiver:Lcom/payeco/android/plugin/w;

.field private mWebView:Landroid/webkit/WebView;

.field private merchOrderId:Ljava/lang/String;

.field resolver:Landroid/content/ContentResolver;

.field private showProgressHandle:Landroid/os/Handler;

.field private smsContentObserver:Landroid/database/ContentObserver;

.field private tempMode:Lcom/baidu/location/LocationClientOption$LocationMode;

.field private tempcoor:Ljava/lang/String;

.field upPay:Lorg/json/JSONObject;

.field private upPayString:Ljava/lang/String;

.field private updateNum:I

.field public url:Ljava/lang/String;

.field public vedioPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->tempMode:Lcom/baidu/location/LocationClientOption$LocationMode;

    const-string v0, "gcj02"

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->tempcoor:Ljava/lang/String;

    new-instance v0, Lcom/payeco/android/plugin/j;

    invoke-direct {v0, p0}, Lcom/payeco/android/plugin/j;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showProgressHandle:Landroid/os/Handler;

    new-instance v0, Lcom/payeco/android/plugin/k;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/payeco/android/plugin/k;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->smsContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private InitLocation()V
    .locals 2

    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->tempMode:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->tempcoor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    const v1, 0x493e0

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setIsNeedAddress(Z)V

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    return-void
.end method

.method static synthetic access$0(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->sendSMSResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->configFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)I
    .locals 1

    iget v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->updateNum:I

    return v0
.end method

.method static synthetic access$12(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;I)V
    .locals 0

    iput p1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->updateNum:I

    return-void
.end method

.method static synthetic access$13(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->baiduLocation()V

    return-void
.end method

.method static synthetic access$2(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->initPlugin()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getHttpParams()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->htmlJson:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$6(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->htmlJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$7(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->setNewKeyAndConfig(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$8(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->keyFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->keyMd5File:Ljava/lang/String;

    return-object v0
.end method

.method private baiduLocation()V
    .locals 2

    new-instance v0, Lcom/baidu/location/LocationClient;

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    new-instance v0, Lcom/payeco/android/plugin/v;

    invoke-direct {v0, p0}, Lcom/payeco/android/plugin/v;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mMyLocationListener:Lcom/payeco/android/plugin/v;

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mMyLocationListener:Lcom/payeco/android/plugin/v;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    invoke-direct {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->InitLocation()V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    return-void
.end method

.method private checkBroadcast()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "Broadcast"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkEnvironment()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "Environment"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "Environment"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "02"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "00"

    :cond_2
    const-string v2, "02"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "dev_ip"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "dev_port"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    const-string v0, "00"

    :cond_4
    :goto_1
    sput-object v0, Lcom/payeco/android/plugin/h;->a:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-string v2, "dev_ip"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/payeco/android/plugin/h;->b:Ljava/lang/String;

    const-string v2, "dev_port"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/payeco/android/plugin/h;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method private checkReadSMSPermisson(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move v1, v0

    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v3, v2, v1

    const-string v4, "android.permission.READ_SMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private checkReceiveSMSPermisson(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x1000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move v1, v0

    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v3, v2, v1

    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getDataFromMerchantClient()Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "upPay.Req"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "upPay.Req"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPayString:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPay:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const-string v1, "Broadcast"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Broadcast"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/i;->c:Ljava/lang/String;

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-static {v3}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getOrderResult(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "merchantOrderId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPay:Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPay:Lorg/json/JSONObject;

    const-string v5, "MerchOrderId"

    const-string v6, "merchantOrderId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v3, "payeco"

    const-string v4, "\u683c\u5f0f\u8f6c\u6362\u9519\u8bef\uff0c\u517c\u5bb91.0\u683c\u5f0f\u89e3\u6790\u5931\u8d25!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPay:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPay:Lorg/json/JSONObject;

    const-string v2, "Broadcast"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const-string v1, "payeco"

    const-string v2, "\u5546\u6237\u672a\u63d0\u4ea4\u5e7f\u64ad\u5730\u5740\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPay:Lorg/json/JSONObject;

    const-string v2, "Broadcast"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/payeco/android/plugin/i;->c:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "payeco"

    const-string v3, "\u5546\u6237\u672a\u63d0\u4ea4\u5e7f\u64ad\u5730\u5740\u6216\u8005\u6709\u8bef\uff01"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getHttpParams()Ljava/util/ArrayList;
    .locals 6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPay:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPay:Lorg/json/JSONObject;

    const-string v1, "MerchOrderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPay:Lorg/json/JSONObject;

    const-string v1, "MerchOrderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->merchOrderId:Ljava/lang/String;

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "MerchOrderId"

    iget-object v3, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->merchOrderId:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPayString:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/b/a;->a([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "OrderInfo"

    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "tradeId"

    const-string v3, "pluginInitDispatcher"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "TradeCode"

    const-string v3, "pluginInitDispatcher"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "MobileOS"

    const-string v3, "2"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "OsVer"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "Factory"

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "Model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "Imei"

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/payeco/android/plugin/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "Imsi"

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "Mac"

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/payeco/android/plugin/util/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "IsRoot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/payeco/android/plugin/a;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "AppVer"

    const-string v3, "1.3.0"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "Channel"

    const-string v3, "100"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/payeco/android/plugin/a;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/i;->d:Ljava/lang/String;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "CommDesKey"

    sget-object v0, Lcom/payeco/android/plugin/i;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/payeco/android/plugin/util/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "CommPKeyIndex"

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "CommPKeyIndex"

    invoke-static {v3, v4}, Lcom/payeco/android/plugin/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "PinPKeyIndex"

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "PinPKeyIndex"

    invoke-static {v3, v4}, Lcom/payeco/android/plugin/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "PhotoSize"

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    const-string v3, "PhotoSize"

    invoke-static {v3}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "LbsTime"

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    const-string v3, "LbsTime"

    invoke-static {v3}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "SoundTime"

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    const-string v3, "SoundTime"

    invoke-static {v3}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "ClientErrOutTime"

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    const-string v3, "ClientErrOutTime"

    invoke-static {v3}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "SmsNumber"

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    const-string v3, "SmsNumber"

    invoke-static {v3}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "SmsPattern"

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    const-string v3, "SmsPattern"

    invoke-static {v3}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "IsFetchSms"

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    const-string v3, "IsFetchSms"

    invoke-static {v3}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "ErrorInfo"

    invoke-static {p0, v0}, Lcom/payeco/android/plugin/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "{}"

    :cond_1
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ErrorInfo"

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    return-object v2

    :cond_2
    const-string v4, "CommPKey"

    invoke-static {p0, v4}, Lcom/payeco/android/plugin/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/payeco/android/plugin/b/f;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "======="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static getOrderResult(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-static {p0}, Lcom/payeco/android/plugin/util/n;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_2
    :pswitch_0
    move-object v1, v0

    :goto_3
    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_0

    :pswitch_1
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_2
    :try_start_3
    const-string v1, "retCode"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "retCode"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto :goto_3

    :cond_2
    const-string v1, "retMsg"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "retMsg"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto :goto_3

    :cond_3
    const-string v1, "tradeId"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "tradeId"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto :goto_3

    :cond_4
    const-string v1, "Version"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Version"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto :goto_3

    :cond_5
    const-string v1, "MerchantId"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "MerchantId"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_6
    const-string v1, "MerchOrderId"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "MerchOrderId"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_7
    const-string v1, "Amount"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Amount"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_8
    const-string v1, "TradeTime"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "TradeTime"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_9
    const-string v1, "OrderId"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "OrderId"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_a
    const-string v1, "Sign"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Sign"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_b
    const-string v1, "respCode"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "respCode"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_c
    const-string v1, "respDesc"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "respDesc"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_d
    const-string v1, "backEndUrl"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "backEndUrl"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_e
    const-string v1, "merchantId"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "merchantId"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_f
    const-string v1, "merchantName"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "merchantName"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_10
    const-string v1, "merchantOrderAmt"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "merchantOrderAmt"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_11
    const-string v1, "merchantOrderDesc"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "merchantOrderDesc"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_12
    const-string v1, "merchantOrderId"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "merchantOrderId"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_13
    const-string v1, "merchantOrderTime"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "merchantOrderTime"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_14
    const-string v1, "sign"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "sign"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_15
    const-string v1, "pan"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "pan"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_16
    const-string v1, "mobileNumber"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "mobileNumber"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_17
    const-string v1, "msgExt"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "msgExt"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v1, v0

    goto/16 :goto_3

    :cond_18
    const-string v1, "misc"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "misc"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_4

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getSMSPqttern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "SmsPattern"

    invoke-static {v0}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initKeyFile()V
    .locals 2

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/i;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/payeco/android/plugin/i;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "payeco_plugin_keys.js"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->keyFile:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/payeco/android/plugin/i;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "payeco_plugin_key_md5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->keyMd5File:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/payeco/android/plugin/i;->e:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "payeco_plugin_config.js"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->configFile:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "payeco_temp1.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mCurrentPhotoFile:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "payeco.mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->vedioPath:Ljava/lang/String;

    return-void
.end method

.method private initPlugin()Ljava/lang/Boolean;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->keyFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/payeco/android/plugin/util/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->keyMd5File:Ljava/lang/String;

    invoke-static {v0}, Lcom/payeco/android/plugin/util/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "{ \'CommPKeyIndex\':\'0\',\'CommPKey\':\'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDS4TageE+BMTBTsq/fayJZBY6p9jMe3TLBhGJag2dP+vVOJxWwT2guucBMvM+z29d1CIc3LKVbxcO9wF3UBgLbw5F4LpNUeG+KmHyeH/qwVWIu13dCsrvqOzUvsJlA9zVA9YVvvCaCfTIHfd/bU5KDQeIJpnwYvm5LNCZOFEITFwIDAQAB\',\'PinPKeyIndex\':\'0\',\'PinPKey\':\'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDJ1fKGMV/yOUnY1ysFCk0yPP4bfOolC/nTAyHmoser+1yzeLtyYsfitYonFIsXBKoAYwSAhNE+ZSdXZs4A5zt4EKoU+T3IoByCoKgvpCuOx8rgIAqC3O/95pGb9n6rKHR2sz5EPT0aBUUDAB2FJYjA9Sy+kURxa52EOtRKolSmEwIDAQAB\'}"

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->savePublicKeys(Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->configFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/payeco/android/plugin/util/a;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "{\'LbsTime\':\'5000\',\'SmsNumber\':\',\',\'IsFetchSms\':\'0\',\'SmsPattern\':\',\',\'PhotoSize\':\'5000\',\'LbsTime\':\'3000\',\'IsLoadUrlMode\':0,SoundTime:6}"

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->configFile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v1, v0}, Lcom/payeco/android/plugin/util/a;->a(Ljava/lang/String;[B)Z

    :cond_2
    invoke-static {}, Lcom/payeco/android/plugin/i;->a()Lcom/payeco/android/plugin/i;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->application:Lcom/payeco/android/plugin/i;

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/payeco/android/plugin/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/payeco/android/plugin/i;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private sendSMSResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getSMSPqttern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    const-string v2, "receiveSMS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/payeco/android/plugin/bridge/JsBridge;->exejsMethod(Ljava/lang/String;Ljava/lang/String;Lcom/payeco/android/plugin/bridge/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setNewKeyAndConfig(Lorg/json/JSONObject;)V
    .locals 4

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/payeco/android/plugin/i;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    invoke-static {}, Lcom/payeco/android/plugin/i;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "CommPKeyIndex"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CommPKeyIndex"

    const-string v3, "CommPKeyIndex"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v2, "CommPKey"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CommPKey"

    const-string v3, "CommPKey"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v2, "PinPKeyIndex"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PinPKeyIndex"

    const-string v3, "PinPKeyIndex"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v2, "PinPKey"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PinPKey"

    const-string v3, "PinPKey"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->savePublicKeys(Ljava/lang/String;)Z

    const-string v0, "IsFetchSms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "LbsTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "PhotoSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SoundTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ClientErrOutTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SmsNumber"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "SmsPattern"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "IsFetchSms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_4
    const-string v0, "LbsTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "LbsTime"

    const-string v2, "LbsTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    const-string v0, "PhotoSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "PhotoSize"

    const-string v2, "PhotoSize"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v0, "SoundTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "SoundTime"

    const-string v2, "SoundTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v0, "ClientErrOutTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ClientErrOutTime"

    const-string v2, "ClientErrOutTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    const-string v0, "SmsNumber"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "SmsNumber"

    const-string v2, "SmsNumber"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v0, "SmsPattern"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "SmsPattern"

    const-string v2, "SmsPattern"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    const-string v0, "IsFetchSms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->checkReceiveSMSPermisson(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Lcom/payeco/android/plugin/w;

    invoke-direct {v0, p0}, Lcom/payeco/android/plugin/w;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mSmsBroadCastReceiver:Lcom/payeco/android/plugin/w;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v2, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mSmsBroadCastReceiver:Lcom/payeco/android/plugin/w;

    invoke-virtual {p0, v2, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_b
    const-string v0, "IsFetchSms"

    const-string v2, "IsFetchSms"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/payeco/android/plugin/i;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "payeco_plugin_config.js"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/payeco/android/plugin/util/a;->a(Ljava/lang/String;[B)Z

    :cond_d
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/payeco/android/plugin/r;

    invoke-direct {v2, p0}, Lcom/payeco/android/plugin/r;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private writeConfigFile3DES(Ljava/lang/String;[B)V
    .locals 2

    invoke-static {p1}, Lcom/payeco/android/plugin/util/m;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/payeco/android/plugin/b/g;->a([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->keyFile:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/payeco/android/plugin/util/a;->a(Ljava/lang/String;[B)Z

    return-void
.end method

.method private writeConfigFileMd5([B)V
    .locals 2

    new-instance v0, Lcom/payeco/android/plugin/b/e;

    invoke-direct {v0}, Lcom/payeco/android/plugin/b/e;-><init>()V

    invoke-static {p1}, Lcom/payeco/android/plugin/b/e;->a([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->keyMd5File:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/payeco/android/plugin/util/a;->a(Ljava/lang/String;[B)Z

    return-void
.end method


# virtual methods
.method public closeProgerss()V
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->loadDialog:Lcom/payeco/android/plugin/f/r;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->loadDialog:Lcom/payeco/android/plugin/f/r;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/r;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->loadDialog:Lcom/payeco/android/plugin/f/r;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/r;->dismiss()V

    goto :goto_0
.end method

.method public creatWebContent()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->requestWindowFeature(I)Z

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->ll_web:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->ll_web:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->ll_web:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->requestFocus(I)Z

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/payeco/android/plugin/p;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/p;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/util/d;->a:Ljava/lang/String;

    new-instance v0, Lcom/payeco/android/plugin/bridge/JsBridge;

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1}, Lcom/payeco/android/plugin/bridge/JsBridge;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->ll_web:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->ll_web:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public doTakePhoto(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/payeco/android/plugin/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u624b\u673a\u6ca1\u7528SD\u5361,\u8bf7\u63d2\u5165\u540e\u518d\u8bd5"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u624b\u673a\u6ca1\u7528SD\u5361,\u8bf7\u63d2\u5165\u540e\u518d\u8bd5\uff01"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    invoke-virtual {v0, p1, v1}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->cameraBackId:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/payeco/android/plugin/PayecoCameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "\u65e0\u6cd5\u5f00\u542f\u76f8\u673a\uff01"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "\u65e0\u6cd5\u5f00\u542f\u76f8\u673a\uff01"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v7

    invoke-virtual {v0, p1, v1}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mCurrentPhotoFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public doTakeVedio(ILjava/lang/String;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/payeco/android/plugin/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u624b\u673a\u6ca1\u7528SD\u5361,\u8bf7\u63d2\u5165\u540e\u518d\u8bd5"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "\u624b\u673a\u6ca1\u7528SD\u5361,\u8bf7\u63d2\u5165\u540e\u518d\u8bd5\uff01"

    aput-object v2, v1, v3

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v6

    invoke-virtual {v0, p2, v1}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iput-object p2, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->cameraBackId:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/payeco/android/plugin/PayecoVedioActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vedioTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "zxf"

    const-string v2, "\u65e0\u6cd5\u5f00\u542f\u76f8\u673a"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "\u65e0\u6cd5\u5f00\u542f\u76f8\u673a\uff01"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "\u65e0\u6cd5\u5f00\u542f\u76f8\u673a\uff01"

    aput-object v2, v1, v3

    const-string v2, ""

    aput-object v2, v1, v5

    const-string v2, ""

    aput-object v2, v1, v6

    invoke-virtual {v0, p2, v1}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public exitPlugin(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->exitPlugin()Ljava/lang/String;

    return-void
.end method

.method protected getHttpGetParams()Ljava/lang/String;
    .locals 5

    const-string v1, ""

    invoke-direct {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getHttpParams()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v1, v0, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getLl_web()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->ll_web:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->a()V

    if-nez p1, :cond_0

    if-ne p2, v8, :cond_2

    new-instance v0, Lcom/payeco/android/plugin/DoPhoto;

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->cameraBackId:Ljava/lang/String;

    iget-object v3, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    invoke-direct {v0, v1, v2, v3}, Lcom/payeco/android/plugin/DoPhoto;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/payeco/android/plugin/bridge/JsBridge;)V

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mCurrentPhotoFile:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/DoPhoto;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    if-ne p1, v4, :cond_1

    if-ne p2, v8, :cond_3

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->cameraBackId:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "\u5f55\u50cf\u6210\u529f"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->vedioPath:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->cameraBackId:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "\u4f60\u6ca1\u6709\u62cd\u7167"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->cameraBackId:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "\u5f55\u50cf\u5931\u8d25"

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/payeco/android/plugin/bridge/JsBridge;->exeJsMethodFromFuncs(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->checkEnvironment()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u672a\u63d0\u4ea4\u53c2\u6570Environment\uff01"

    invoke-direct {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->checkBroadcast()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u672a\u63d0\u4ea4\u53c2\u6570Broadcast\uff01"

    invoke-direct {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "payeco_plugin_initing"

    invoke-static {v0, v1, v2}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showProgress(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->a()V

    :try_start_0
    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->creatWebContent()V

    invoke-direct {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->initKeyFile()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "ClientErrOutTime"

    invoke-static {v0}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/16 v0, 0x1e

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_1
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    :try_start_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v1, "photoTime"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->isDestroy:Z

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    invoke-direct {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getDataFromMerchantClient()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/payeco/android/plugin/m;

    invoke-direct {v0, p0}, Lcom/payeco/android/plugin/m;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/m;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->closeProgerss()V

    const-string v0, "\u67e5\u8be2\u8ba2\u5355\u72b6\u6001\u4e2d..."

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showProgress(Ljava/lang/String;Z)V

    const-string v0, "upPayString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPayString:Ljava/lang/String;

    const-string v0, "merchOrderId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->merchOrderId:Ljava/lang/String;

    const-string v0, "payend_action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/i;->c:Ljava/lang/String;

    const-string v0, "desPrivateKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/payeco/android/plugin/i;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPayString:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, ""

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPayString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPayString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPay:Lorg/json/JSONObject;

    :cond_4
    new-instance v0, Lcom/payeco/android/plugin/util/b;

    invoke-static {}, Lcom/payeco/android/plugin/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/payeco/android/plugin/util/b;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tradeId"

    const-string v4, "crashQueryOrder"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "MerchOrderId"

    iget-object v4, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->merchOrderId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPayString:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/payeco/android/plugin/b/a;->a([B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "OrderInfo"

    invoke-direct {v3, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/util/b;->a(Ljava/util/ArrayList;)V

    new-instance v1, Lcom/payeco/android/plugin/l;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/l;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/util/b;->a(Lcom/payeco/android/plugin/util/l;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "payeco_plugin_pay_fail"

    invoke-static {v0, v1, v2}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "string"

    const-string v1, "payeco_plugin_pay_fail"

    invoke-static {p0, v0, v1}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/payeco/android/plugin/c/b;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->closeProgerss()V

    iget-boolean v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->isDestroy:Z

    if-nez v0, :cond_0

    const-string v0, "IsFetchSms"

    invoke-static {v0}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->checkReceiveSMSPermisson(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mSmsBroadCastReceiver:Lcom/payeco/android/plugin/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mSmsBroadCastReceiver:Lcom/payeco/android/plugin/w;

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/bridge/JsBridge;->goBack()Ljava/lang/String;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "IsFetchSms"

    invoke-static {v0}, Lcom/payeco/android/plugin/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->checkReceiveSMSPermisson(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/payeco/android/plugin/w;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/w;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V

    iput-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mSmsBroadCastReceiver:Lcom/payeco/android/plugin/w;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v2, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mSmsBroadCastReceiver:Lcom/payeco/android/plugin/w;

    invoke-virtual {p0, v2, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    invoke-direct {p0, p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->checkReadSMSPermisson(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->resolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->resolver:Landroid/content/ContentResolver;

    const-string v1, "content://mms-sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->smsContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "zxf"

    const-string v1, "-onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mCurrentPhotoFile"

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mCurrentPhotoFile:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "url"

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "photoTime"

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "payend_action"

    sget-object v1, Lcom/payeco/android/plugin/i;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "desPrivateKey"

    sget-object v1, Lcom/payeco/android/plugin/i;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v0, "upPayString"

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->upPayString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "merchOrderId"

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->merchOrderId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public repay()V
    .locals 3

    invoke-virtual {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "payeco_plugin_initing"

    invoke-static {v0, v1, v2}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showProgressToMain(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getDataFromMerchantClient()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/payeco/android/plugin/s;

    invoke-direct {v0, p0}, Lcom/payeco/android/plugin/s;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/payeco/android/plugin/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    const-string v0, "string"

    const-string v1, "payeco_plugin_pay_fail"

    invoke-static {p0, v0, v1}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public savePublicKeys(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/payeco/android/plugin/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->writeConfigFile3DES(Ljava/lang/String;[B)V

    invoke-direct {p0, v1}, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->writeConfigFileMd5([B)V

    const/4 v0, 0x1

    return v0
.end method

.method public setWebViewSetting()V
    .locals 3

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/payeco/android/plugin/q;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/q;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/payeco/android/plugin/d/a;

    invoke-direct {v1, p0}, Lcom/payeco/android/plugin/d/a;-><init>(Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->bridge:Lcom/payeco/android/plugin/bridge/JsBridge;

    const-string v2, "mybridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public showProgress(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->loadDialog:Lcom/payeco/android/plugin/f/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->loadDialog:Lcom/payeco/android/plugin/f/r;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/r;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->loadDialog:Lcom/payeco/android/plugin/f/r;

    if-nez v0, :cond_2

    new-instance v0, Lcom/payeco/android/plugin/f/r;

    const-string v1, "style"

    const-string v2, "payeco_fullHeightDialog"

    invoke-static {p0, v1, v2}, Lcom/payeco/android/plugin/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/payeco/android/plugin/f/r;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Lcom/payeco/android/plugin/f/r;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/payeco/android/plugin/f/r;->setCancelable(Z)V

    iput-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->loadDialog:Lcom/payeco/android/plugin/f/r;

    :cond_2
    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->loadDialog:Lcom/payeco/android/plugin/f/r;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/r;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->loadDialog:Lcom/payeco/android/plugin/f/r;

    invoke-virtual {v0, p1}, Lcom/payeco/android/plugin/f/r;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->loadDialog:Lcom/payeco/android/plugin/f/r;

    invoke-virtual {v0}, Lcom/payeco/android/plugin/f/r;->show()V

    goto :goto_0
.end method

.method public showProgressToMain(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/payeco/android/plugin/PayecoPluginLoadingActivity;->showProgressHandle:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
